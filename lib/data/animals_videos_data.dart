class AnimalVideoItem {
  final String title;
  final String assetPath;

  const AnimalVideoItem({
    required this.title,
    required this.assetPath,
  });
}

const animalVideos = <AnimalVideoItem>[
  AnimalVideoItem(
    title: 'Sheep',
    assetPath: 'assets/videos/sheep.mp4',
  ),
  AnimalVideoItem(
    title: 'Monkey',
    assetPath: 'assets/videos/monkey.mp4',
  ),
  AnimalVideoItem(
    title: 'Lion',
    assetPath: 'assets/videos/lion.mp4',
  ),
  AnimalVideoItem(
    title: 'Elephant',
    assetPath: 'assets/videos/elephant.mp4',
  ),
];
