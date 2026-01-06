import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'screens/journey_screen.dart';
import 'screens/categories_screen.dart';
import 'screens/numbers_screen.dart';
import 'screens/colors_screen.dart';
import 'screens/family_screen.dart';
import 'screens/animals_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Heyv Kurdi Kids',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => const HomeScreen(),
        JourneyScreen.routeName: (_) => const JourneyScreen(),
        CategoriesScreen.routeName: (_) => const CategoriesScreen(),
        NumbersScreen.routeName: (_) => const NumbersScreen(),
        ColorsScreen.routeName: (_) => const ColorsScreen(),
        FamilyScreen.routeName: (_) => const FamilyScreen(),
        AnimalsScreen.routeName: (_) => const AnimalsScreen(),
      },
    );
  }
}
