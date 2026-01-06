import 'package:flutter/material.dart';
import '../widgets/app_background.dart';
import 'numbers_screen.dart';
import 'colors_screen.dart';
import 'animals_screen.dart';
import 'family_screen.dart';

class CategoriesScreen extends StatelessWidget {
  static const routeName = '/collection';
  const CategoriesScreen({super.key});

  Widget _card({
    required BuildContext context,
    required String title,
    required String subtitle,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    final cs = Theme.of(context).colorScheme;

    return InkWell(
      borderRadius: BorderRadius.circular(18),
      onTap: onTap,
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.white.withValues(alpha: 0.85),
          border: Border.all(color: cs.outlineVariant),
        ),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: cs.primaryContainer,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Icon(icon, color: cs.onPrimaryContainer),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w800)),
                    const SizedBox(height: 4),
                    Text(subtitle,
                        style: TextStyle(color: cs.onSurfaceVariant)),
                  ],
                ),
              ),
              Icon(Icons.chevron_right, color: cs.onSurfaceVariant),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundScaffold(
      backgroundAsset: 'assets/images/home.png',
      appBar: AppBar(title: const Text('Collection')),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _card(
              context: context,
              title: 'Numbers',
              subtitle: '1 → 100',
              icon: Icons.filter_1_outlined,
              onTap: () => Navigator.pushNamed(context, NumbersScreen.routeName),
            ),
            const SizedBox(height: 12),
            _card(
              context: context,
              title: 'Colors',
              subtitle: 'Learn colors',
              icon: Icons.palette_outlined,
              onTap: () => Navigator.pushNamed(context, ColorsScreen.routeName),
            ),
            const SizedBox(height: 12),
            _card(
              context: context,
              title: 'Animals',
              subtitle: 'Coming soon',
              icon: Icons.pets_outlined,
              onTap: () => Navigator.pushNamed(context, AnimalsScreen.routeName),
            ),
            const SizedBox(height: 12),
            _card(
              context: context,
              title: 'Family',
              subtitle: 'Coming soon',
              icon: Icons.family_restroom_outlined,
              onTap: () => Navigator.pushNamed(context, FamilyScreen.routeName),
            ),
          ],
        ),
      ),
    );
  }
}
