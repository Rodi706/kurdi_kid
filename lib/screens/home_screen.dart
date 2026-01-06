import 'package:flutter/material.dart';
import 'categories_screen.dart';
import 'journey_screen.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    Widget card({
      required String title,
      required String subtitle,
      required IconData icon,
      required VoidCallback onTap,
    }) {
      return InkWell(
        borderRadius: BorderRadius.circular(18),
        onTap: onTap,
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.white.withValues(alpha: 0.85),
            border: Border.all(color: cs.outlineVariant),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.06),
                blurRadius: 14,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    color: cs.primaryContainer,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Icon(icon, color: cs.onPrimaryContainer),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w800)),
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

    return Scaffold(
      appBar: AppBar(
        title: const Text('Heyv Kurdi Kids'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/home.png', // ✅ الصحيح
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                // fallback إذا في خطأ بالمسار
                return Container(color: const Color(0xFFEFF7F4));
              },
            ),
          ),

          // overlay لتوضيح النص
          Positioned.fill(
            child: Container(
              color: Colors.black.withValues(alpha: 0.18),
            ),
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  card(
                    title: 'Start Journey',
                    subtitle: 'Stages with questions',
                    icon: Icons.rocket_launch_outlined,
                    onTap: () =>
                        Navigator.pushNamed(context, JourneyScreen.routeName),
                  ),
                  const SizedBox(height: 14),
                  card(
                    title: 'Collection',
                    subtitle: 'Numbers • Colors • Animals • Family',
                    icon: Icons.collections_bookmark_outlined,
                    onTap: () => Navigator.pushNamed(
                        context, CategoriesScreen.routeName),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
