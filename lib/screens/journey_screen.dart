import 'dart:ui';
import 'package:flutter/material.dart';
import '../services/progress_service.dart';
import 'stage_screen.dart';
import '../widgets/app_background.dart';

class JourneyScreen extends StatefulWidget {
  static const routeName = '/journey';
  const JourneyScreen({super.key});

  @override
  State<JourneyScreen> createState() => _JourneyScreenState();
}

class _JourneyScreenState extends State<JourneyScreen> {
  static const int maxStages = 5;
  int _unlockedStage = 1;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _loadProgress();
  }

  Future<void> _loadProgress() async {
    final unlocked = await ProgressService.getUnlockedStage();
    if (!mounted) return;
    setState(() {
      _unlockedStage = unlocked;
      _loading = false;
    });
  }

  Future<void> _openStage(int stage) async {
    final bool? completed = await Navigator.push<bool>(
      context,
      MaterialPageRoute(
        builder: (_) => StageScreen(stageNumber: stage, maxStages: maxStages),
      ),
    );

    if (completed == true) {
      await _loadProgress();
    }
  }

  Widget _glassCard({
    required Widget child,
    bool locked = false,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 14, sigmaY: 14),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            // glass fill
            color: locked
                ? Colors.white.withValues(alpha: 0.22)
                : Colors.white.withValues(alpha: 0.30),
            // glass border
            border: Border.all(
              color: Colors.white.withValues(alpha: locked ? 0.28 : 0.40),
              width: 1,
            ),
            // soft shadow
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: locked ? 0.10 : 0.14),
                blurRadius: 16,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: child,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    if (_loading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return BackgroundScaffold(
      backgroundAsset: 'assets/images/start_journey.png',
      appBar: AppBar(
        title: const Text('Journey'),
        actions: [
          IconButton(
            tooltip: 'Reset progress',
            onPressed: () async {
              await ProgressService.reset();
              await _loadProgress();
            },
            icon: const Icon(Icons.restart_alt),
          ),
        ],
      ),
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: maxStages,
        itemBuilder: (context, i) {
          final stage = i + 1;
          final locked = stage > _unlockedStage;

          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: InkWell(
              borderRadius: BorderRadius.circular(18),
              onTap: locked ? null : () => _openStage(stage),
              child: _glassCard(
                locked: locked,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: locked
                            ? Colors.black.withValues(alpha: 0.12)
                            : cs.primary.withValues(alpha: 0.18),
                        child: locked
                            ? const Icon(Icons.lock_outline, size: 20)
                            : Text(
                                '$stage',
                                style: const TextStyle(fontWeight: FontWeight.w800),
                              ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          locked ? 'Stage $stage • Locked' : 'Stage $stage • 10 questions',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Colors.black.withValues(alpha: locked ? 0.60 : 0.78),
                          ),
                        ),
                      ),
                      Icon(
                        locked ? Icons.lock_outline : Icons.chevron_right,
                        color: Colors.black.withValues(alpha: locked ? 0.55 : 0.70),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
