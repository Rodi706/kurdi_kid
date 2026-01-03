import 'package:flutter/material.dart';
import '../data/colors_data.dart';
import '../widgets/color_tile.dart';

class ColorsScreen extends StatefulWidget {
  static const routeName = '/colors';
  const ColorsScreen({super.key});

  @override
  State<ColorsScreen> createState() => _ColorsScreenState();
}

class _ColorsScreenState extends State<ColorsScreen> {
  final ScrollController _controller = ScrollController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Colors')),
      body: Scrollbar(
        controller: _controller,
        thumbVisibility: true,
        interactive: true,
        thickness: 10,
        radius: const Radius.circular(10),
        child: ListView.builder(
          controller: _controller,
          padding: const EdgeInsets.all(16),
          itemCount: colorsData.length,
          itemBuilder: (context, i) => ColorTile(item: colorsData[i]),
        ),
      ),
    );
  }
}
