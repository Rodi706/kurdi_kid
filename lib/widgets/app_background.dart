import 'package:flutter/material.dart';

class BackgroundScaffold extends StatelessWidget {
  final String backgroundAsset;
  final PreferredSizeWidget? appBar;
  final Widget child;
  final Widget? floatingActionButton;

  const BackgroundScaffold({
    super.key,
    required this.backgroundAsset,
    required this.child,
    this.appBar,
    this.floatingActionButton,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar == null
          ? null
          : AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: (appBar as AppBar).title,
              centerTitle: (appBar as AppBar).centerTitle,
              actions: (appBar as AppBar).actions,
              leading: (appBar as AppBar).leading,
            ),
      floatingActionButton: floatingActionButton,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              backgroundAsset,
              fit: BoxFit.cover,
            ),
          ),
          // soft overlay to make text readable
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withValues(alpha: 0.20),
                    Colors.black.withValues(alpha: 0.05),
                    Colors.black.withValues(alpha: 0.25),
                  ],
                ),
              ),
            ),
          ),
          SafeArea(child: child),
        ],
      ),
    );
  }
}
