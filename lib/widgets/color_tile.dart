import 'package:flutter/material.dart';
import '../data/colors_data.dart';

class ColorTile extends StatelessWidget {
  final ColorItem item;
  const ColorTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    final isLight = ThemeData.estimateBrightnessForColor(item.color) == Brightness.light;
    final textOnSwatch = isLight ? Colors.black : Colors.white;

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        onTap: () {
          // لاحقاً: نضيف صوت اسم اللون
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('${item.en} = ${item.kuLatin} / ${item.kuArabic}')),
          );
        },
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
                    color: item.color,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: cs.outlineVariant),
                  ),
                  alignment: Alignment.center,
                  child: Icon(Icons.palette_outlined, color: textOnSwatch),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.kuLatin,
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        item.kuArabic,
                        style: TextStyle(fontSize: 16, color: cs.onSurfaceVariant),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
