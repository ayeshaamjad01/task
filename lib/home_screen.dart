import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/theme_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        child: Column(
          children: [
            IconButton(
              onPressed: () {
                Provider.of<ThemeProvider>(context, listen: false)
                    .toggleTheme();
              },
              icon: const Icon(
                Icons.light,
              ),

              // child: ElevatedButton(
              //   onPressed: () {
              //     Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
              //   },
              //   child: Text('Toggle Dark Mode'),
              // ),
            ),
          ],
        ),
      ),
    ));
  }
}
