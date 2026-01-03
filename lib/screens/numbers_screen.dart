import 'package:flutter/material.dart';
import '../data/numbers_data.dart';
import '../widgets/number_title.dart';

class NumbersScreen extends StatefulWidget {
  static const routeName = '/numbers';
  const NumbersScreen({super.key});

  @override
  State<NumbersScreen> createState() => _NumbersScreenState();
}

class _NumbersScreenState extends State<NumbersScreen> {
  final ScrollController _controller = ScrollController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _scrollToTop() {
    _controller.animateTo(
      0,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeOut,
    );
  }

  void _scrollToBottom() {
    _controller.animateTo(
      _controller.position.maxScrollExtent,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Numbers')),
      body: Scrollbar(
        controller: _controller,
        thumbVisibility: true,
        interactive: true,    
        thickness: 10,
        radius: const Radius.circular(10),
        child: ListView.builder(
          controller: _controller,
          padding: const EdgeInsets.all(16),
          itemCount: numbersData.length,
          itemBuilder: (context, i) => NumberTile(item: numbersData[i]),
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton.small(
            heroTag: 'top',
            onPressed: _scrollToTop,
            child: const Icon(Icons.keyboard_arrow_up),
          ),
          const SizedBox(height: 10),
          FloatingActionButton.small(
            heroTag: 'bottom',
            onPressed: _scrollToBottom,
            child: const Icon(Icons.keyboard_arrow_down),
          ),
        ],
      ),
    );
  }
}
