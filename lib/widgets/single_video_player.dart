import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class SingleVideoPlayer extends StatefulWidget {
  final String assetPath;
  final bool loop;
  final bool autoplay;

  const SingleVideoPlayer({
    super.key,
    required this.assetPath,
    this.loop = true,
    this.autoplay = true,
  });

  @override
  State<SingleVideoPlayer> createState() => _SingleVideoPlayerState();
}

class _SingleVideoPlayerState extends State<SingleVideoPlayer> {
  VideoPlayerController? _controller;
  Future<void>? _initFuture;

  @override
  void initState() {
    super.initState();
    _load(widget.assetPath);
  }

  @override
  void didUpdateWidget(covariant SingleVideoPlayer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.assetPath != widget.assetPath) {
      _load(widget.assetPath);
    }
  }

  Future<void> _load(String assetPath) async {
    // dispose old controller FIRST
    final old = _controller;
    _controller = null;
    if (old != null) {
      await old.pause();
      await old.dispose();
    }

    // create new controller (ASSET)
    final c = VideoPlayerController.asset(assetPath);
    _controller = c;

    _initFuture = c.initialize().then((_) async {
      await c.setLooping(widget.loop);
      if (widget.autoplay) {
        await c.play();
      }
    });

    if (mounted) setState(() {});
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final c = _controller;
    if (c == null || _initFuture == null) return const SizedBox.shrink();

    return FutureBuilder(
      future: _initFuture,
      builder: (context, snap) {
        if (snap.connectionState != ConnectionState.done) {
          return const Center(child: CircularProgressIndicator());
        }
        return AspectRatio(
          aspectRatio: c.value.aspectRatio,
          child: VideoPlayer(c),
        );
      },
    );
  }
}
