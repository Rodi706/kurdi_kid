import 'package:flutter/material.dart';
import '../widgets/category_card.dart';
import 'numbers_screen.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      CategoryCardData(
        title: 'Numbers',
        subtitle: '1 → 100',
        icon: Icons.looks_one_outlined,
        onTap: () => Navigator.pushNamed(context, NumbersScreen.routeName),
      ),
      CategoryCardData(
        title: 'Colors',
        subtitle: 'Coming soon',
        icon: Icons.palette_outlined,
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Colors: coming soon 👀')),
          );
        },
      ),
      CategoryCardData(
        title: 'Animals',
        subtitle: 'Coming soon',
        icon: Icons.pets_outlined,
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Animals: coming soon 🐶')),
          );
        },
      ),
      CategoryCardData(
        title: 'Family',
        subtitle: 'Coming soon',
        icon: Icons.family_restroom_outlined,
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Family: coming soon 👨‍👩‍👧')),
          );
        },
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Kurdi Kids'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 14,
            crossAxisSpacing: 14,
            childAspectRatio: 1.1,
          ),
          itemBuilder: (context, i) => CategoryCard(data: items[i]),
        ),
      ),
    );
  }
}
