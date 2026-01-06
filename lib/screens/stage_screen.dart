import 'dart:math';
import 'package:flutter/material.dart';
import '../services/progress_service.dart';

class StageScreen extends StatefulWidget {
  final int stageNumber;
  final int maxStages;

  const StageScreen({
    super.key,
    required this.stageNumber,
    required this.maxStages,
  });

  @override
  State<StageScreen> createState() => _StageScreenState();
}

class _StageScreenState extends State<StageScreen> {
  late final List<_Question> _questions;
  int _index = 0;
  int _score = 0;

  @override
  void initState() {
    super.initState();
    _questions = _generateQuestions(stage: widget.stageNumber, count: 10);
  }

  List<_Question> _generateQuestions({required int stage, required int count}) {
    final rnd = Random(stage * 999);
    return List.generate(count, (i) {
      final a = rnd.nextInt(10) + 1;
      final b = rnd.nextInt(10) + 1;
      final correct = a + b;
      final choices = <int>{correct};
      while (choices.length < 4) {
        choices.add(correct + rnd.nextInt(7) - 3);
      }
      final opts = choices.toList()..shuffle(rnd);
      return _Question(text: 'What is $a + $b ?', options: opts, correct: correct);
    });
  }

  Future<void> _finishStage() async {
    await ProgressService.completeStage(widget.stageNumber, widget.maxStages);

    if (!mounted) return;
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => AlertDialog(
        title: const Text('Stage complete!'),
        content: Text('Score: $_score / ${_questions.length}'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);      // close dialog
              Navigator.pop(context, true); // return "completed"
            },
            child: const Text('Back to stages'),
          ),
        ],
      ),
    );
  }

  void _answer(int value) {
    final q = _questions[_index];
    final isCorrect = value == q.correct;

    setState(() {
      if (isCorrect) _score++;
      if (_index < _questions.length - 1) {
        _index++;
      } else {
        _finishStage();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final q = _questions[_index];

    return Scaffold(
      appBar: AppBar(title: Text('Stage ${widget.stageNumber}')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Question ${_index + 1} / ${_questions.length}'),
            const SizedBox(height: 10),
            Text(q.text, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800)),
            const SizedBox(height: 16),
            ...q.options.map((opt) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => _answer(opt),
                  child: Text('$opt'),
                ),
              ),
            )),
            const Spacer(),
            Text('Score: $_score', style: const TextStyle(fontWeight: FontWeight.w700)),
          ],
        ),
      ),
    );
  }
}

class _Question {
  final String text;
  final List<int> options;
  final int correct;
  _Question({required this.text, required this.options, required this.correct});
}
