import 'package:flutter/material.dart';
import '../widgets/app_background.dart';

class FamilyScreen extends StatelessWidget {
  static const routeName = '/family';
  const FamilyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundScaffold(
      backgroundAsset: 'assets/images/family.png',
      appBar: AppBar(
  title: const Text(
    'Family',
    style: TextStyle(color: Colors.blue),
  ),
),
      child: const Center(
        child: Text(
          'Family: coming soon 👨‍👩‍👧‍👦',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}
