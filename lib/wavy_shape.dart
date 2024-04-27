import 'package:flutter/material.dart';

class OvalMaskedImage extends StatelessWidget {
  final String imagePath;
  final double width;
  final double height;

  OvalMaskedImage({
    required this.imagePath,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        width: 300,
        height: 300,
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
