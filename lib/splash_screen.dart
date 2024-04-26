import 'package:flutter/material.dart';
import 'package:task/carousel_screen.dart';
import 'package:task/home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay to simulate the duration of the splash screen animation
    Future.delayed(Duration(seconds: 20), () {
      // Navigate to the next screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // Return your splash screen widget here
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(), // Or your splash screen content
      ),
    );
  }
}
