import 'package:flutter/material.dart';

class VideoBackground extends StatelessWidget {
  final List<Color> colors;
  final List<double> stop;
  const VideoBackground(
      {super.key,
      this.colors = const [Colors.transparent, Colors.black87],
      this.stop = const [0.8, 1.0]})
      : assert(colors.length == stop.length,
            'Stop and colors must be same length');

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
        child: DecoratedBox(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: colors,
              stops: stop,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
    ));
  }
}
