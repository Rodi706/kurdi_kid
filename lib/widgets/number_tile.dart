import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../data/numbers_data.dart';

class NumberTile extends StatefulWidget {
  final NumberItem item;
  const NumberTile({super.key, required this.item});

  @override
  State<NumberTile> createState() => _NumberTileState();
}

class _NumberTileState extends State<NumberTile> {
  final AudioPlayer _player = AudioPlayer();
  bool _playing = false;

  Future<void> _play() async {
    try {
      setState(() => _playing = true);
      await _player.stop();

      // AssetSource expects path relative to /assets
      final relPath = widget.item.audioAsset.replaceFirst('assets/', '');
      await _player.play(AssetSource(relPath));
    } finally {
      if (mounted) setState(() => _playing = false);
    }
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  Widget _glassCard({
    required Widget child,
    EdgeInsets padding = const EdgeInsets.all(12),
    double radius = 18,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
        child: Container(
          padding: padding,
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.45),
            borderRadius: BorderRadius.circular(radius),
            border: Border.all(color: Colors.white.withValues(alpha: 0.55)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.10),
                blurRadius: 12,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          child: child,
        ),
      ),
    );
  }

  @override
@override
Widget build(BuildContext context) {
  final cs = Theme.of(context).colorScheme;

return LayoutBuilder(
  builder: (context, constraints) {
    const double voiceSize = 56;
    const double gap = 10;

    // max width available for the left card
    final double maxLeft = constraints.maxWidth - voiceSize - gap;

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          // left card (fits content BUT never overflows the screen)
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: maxLeft),
            child: _glassCard(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 52,
                    height: 52,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: cs.primaryContainer,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      '${widget.item.value}',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: cs.onPrimaryContainer,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),

                  // ✅ This allows the text to shrink and prevents overflow
                  Flexible(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.item.kuLatin,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          widget.item.kuArabic,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: cs.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          const Spacer(),

          // voice card at end of the line
          _glassCard(
            padding: EdgeInsets.zero,
            radius: 16,
            child: SizedBox(
              width: voiceSize,
              height: voiceSize,
              child: InkWell(
                onTap: _play,
                child: Center(
                  child: Icon(
                    _playing ? Icons.volume_up : Icons.volume_up_outlined,
                    color: cs.primary,
                    size: 24,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  },
);

}

}
