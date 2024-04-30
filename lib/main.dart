import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/splash_screen.dart';
import 'package:task/theme_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Application',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: Provider.of<ThemeProvider>(context).isDarkMode
          ? ThemeMode.dark
          : ThemeMode.light,
      //home: CarouselScreen(),
      //home: WavyShape(),
      //home: HomePage(),
      home: SplashScreen(),
      //home: NewPage(),
      //home: ScreenSlider(),
      ////implement the card here with the colors and the buttons
      //home: Test(),
      //home: WelcomeScreen(),
      //home: Images(),
      //home: HomePageTwo(),
      //home: PostData(),
    );
  }
}
