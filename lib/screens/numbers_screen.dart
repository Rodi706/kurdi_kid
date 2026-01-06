import 'package:flutter/material.dart';
import '../widgets/app_background.dart';
import '../data/numbers_data.dart';
import '../widgets/number_tile.dart';

class NumbersScreen extends StatefulWidget {
  static const routeName = '/numbers';
  const NumbersScreen({super.key});

  @override
  State<NumbersScreen> createState() => _NumbersScreenState();
}

class _NumbersScreenState extends State<NumbersScreen> {
  final ScrollController _controller = ScrollController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundScaffold(
      backgroundAsset: 'assets/images/numbers.png',
      appBar: AppBar(
  title: const Text(
    'Numbers',
    style: TextStyle(color: Colors.red),
  ),
),
      child: Scrollbar(
        controller: _controller,
        thumbVisibility: true,
        interactive: true,
        thickness: 10,
        radius: const Radius.circular(10),
        child: ListView.builder(
          controller: _controller,
          padding: const EdgeInsets.all(16),
          itemCount: numbersData.length,
          itemBuilder: (context, i) => NumberTile(item: numbersData[i]),
        ),
      ),
    );
  }
}
