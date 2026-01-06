import 'dart:ui';
import 'package:flutter/material.dart';
import '../data/animals_videos_data.dart';
import '../widgets/single_video_player.dart';

class AnimalVideoCard extends StatelessWidget {
  final AnimalVideoItem item;
  final bool isActive;
  final VoidCallback onTogglePlay;

  const AnimalVideoCard({
    super.key,
    required this.item,
    required this.isActive,
    required this.onTogglePlay,
  });

  Widget _glass({required Widget child}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.42),
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: Colors.white.withValues(alpha: 0.55)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.10),
                blurRadius: 14,
                offset: const Offset(0, 8),
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

    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: _glass(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      item.title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        color: cs.onSurface,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: onTogglePlay,
                    icon: Icon(
                      isActive ? Icons.pause_rounded : Icons.play_arrow_rounded,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: isActive
                      ? SingleVideoPlayer(
                          key: ValueKey(item.assetPath), // important
                          assetPath: item.assetPath,
                          loop: true,
                          autoplay: true,
                        )
                      : Stack(
                          fit: StackFit.expand,
                          children: [
                            Container(
                              color: Colors.black.withValues(alpha: 0.10),
                              child: Center(
                                child: Icon(
                                  Icons.video_library_rounded,
                                  size: 48,
                                  color: cs.onSurfaceVariant,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              left: 10,
                              right: 10,
                              child: Text(
                                'Tap Play to load video',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: cs.onSurfaceVariant,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
