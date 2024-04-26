import 'package:flutter/material.dart';

class CarouselScreen extends StatefulWidget {
  const CarouselScreen({super.key});

  @override
  State<CarouselScreen> createState() => _CarouselScreenState();
}

class _CarouselScreenState extends State<CarouselScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double responsiveSize = MediaQuery.of(context).size.width;
    return SafeArea(
      child: SingleChildScrollView(
        child: Scaffold(
          body: Center(child: Container(color: Colors.lightBlueAccent)),
        ),
      ),
    );
  }
}
