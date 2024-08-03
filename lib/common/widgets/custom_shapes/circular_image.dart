import 'package:flutter/material.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key,
    this.width = 60,
    this.height = 60,
    this.padding = 0,
    this.fit = BoxFit.cover,
    this.overlayColor,
    this.backgroundColor,
    required this.image,
  });

  final double width, height, padding;
  final BoxFit? fit;
  final String image;
  final Color? overlayColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Center(
          child: Image(
            fit: fit,
            color: overlayColor,
            image: AssetImage(image),
          ),
        ),
      ),

    );
  }
}