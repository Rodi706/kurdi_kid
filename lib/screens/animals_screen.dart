import 'package:flutter/material.dart';
import '../widgets/app_background.dart';
import '../data/animals_videos_data.dart';
import '../widgets/animal_video_card.dart';

class AnimalsScreen extends StatefulWidget {
  static const routeName = '/animals';
  const AnimalsScreen({super.key});

  @override
  State<AnimalsScreen> createState() => _AnimalsScreenState();
}

class _AnimalsScreenState extends State<AnimalsScreen> {
  int? _activeIndex;

  void _togglePlay(int index) {
    setState(() {
      // if same card -> stop (dispose player)
      if (_activeIndex == index) {
        _activeIndex = null;
      } else {
        _activeIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundScaffold(
      backgroundAsset: 'assets/images/animals.png',
      appBar: AppBar(
        title: const Text('Animals', style: TextStyle(color: Colors.blue)),
        iconTheme: const IconThemeData(color: Colors.blue),
      ),
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: animalVideos.length,
        itemBuilder: (context, i) {
          final item = animalVideos[i];
          final isActive = _activeIndex == i;

          return AnimalVideoCard(
            item: item,
            isActive: isActive,
            onTogglePlay: () => _togglePlay(i),
          );
        },
      ),
    );
  }
}
