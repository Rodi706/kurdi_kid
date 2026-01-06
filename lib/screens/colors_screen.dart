import 'package:flutter/material.dart';
import '../widgets/app_background.dart';
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
    return BackgroundScaffold(
      backgroundAsset: 'assets/images/colors.png',
      appBar: AppBar(
  title: const Text(
    'Colors',
    style: TextStyle(color: Colors.blue),
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
          itemCount: colorsData.length,
          itemBuilder: (context, i) => ColorTile(item: colorsData[i]),
        ),
      ),
    );
  }
}
