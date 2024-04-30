import 'package:flutter/material.dart';
import 'package:task/welcome_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: DisplayGif(),
        ),
      ),
    );
  }
}

class DisplayGif extends StatefulWidget {
  @override
  _DisplayGifState createState() => _DisplayGifState();
}

class _DisplayGifState extends State<DisplayGif> {
  @override
  void initState() {
    super.initState();
    // Start the timer when the widget is initialized
    Future.delayed(Duration(seconds: 14), () {
      // After 3 seconds, navigate to the WelcomeScreen
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // Return the image widget

    return Image.asset(
      'assets/images/5d561af94f8008552ee236b778605983.gif', // Replace 'your_gif.gif' with your actual GIF file path
      // You can adjust the width and height as needed
    );
  }
}
