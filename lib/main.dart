import 'package:flutter/material.dart';
import 'screens/categories_screen.dart';
import 'screens/numbers_screen.dart';
import 'screens/colors_screen.dart';

void main() {
  runApp(const KurdiKidsApp());
}

class KurdiKidsApp extends StatelessWidget {
  const KurdiKidsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kurdi Kids',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.teal,
      ),
      routes: {
        '/': (_) => const CategoriesScreen(),
        NumbersScreen.routeName: (_) => const NumbersScreen(),
        ColorsScreen.routeName: (_) => const ColorsScreen(),
      },
      initialRoute: '/',
    );
  }
}
