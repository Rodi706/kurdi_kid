import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../data/numbers_data.dart';

class NumberTile extends StatefulWidget {
  final NumberItem item;
  const NumberTile({super.key, required this.item});

  @override
  State<NumberTile> createState() => _NumberTileState();
}

class _NumberTileState extends State<NumberTile> {
  static final AudioPlayer _player = AudioPlayer(); // shared

  Future<void> _play() async {
    await _player.stop();
    await _player.play(AssetSource(widget.item.audioAsset.replaceFirst('assets/', '')));
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        onTap: _play,
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: cs.surface,
            border: Border.all(color: cs.outlineVariant),
          ),
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Row(
              children: [
                Container(
                  width: 54,
                  height: 54,
                  decoration: BoxDecoration(
                    color: cs.primaryContainer,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '${widget.item.value}',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                      color: cs.onPrimaryContainer,
                    ),
                  ),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.item.kuLatin,
                          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                      const SizedBox(height: 4),
                      Text(widget.item.kuArabic,
                          style: TextStyle(fontSize: 16, color: cs.onSurfaceVariant)),
                    ],
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.volume_up_outlined, color: cs.onSurfaceVariant),
                  onPressed: _play,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
