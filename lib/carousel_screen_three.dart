import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:task/home_screen.dart';
import 'package:task/theme_provider.dart';
import 'package:task/wavy_shape.dart';

class CarouselScreenThree extends StatefulWidget {
  const CarouselScreenThree({super.key});

  @override
  State<CarouselScreenThree> createState() => _CarouselScreenThreeState();
}

class _CarouselScreenThreeState extends State<CarouselScreenThree> {
  int _currentPageIndex = 2;

  void _onPageChanged(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  void _navigateToNextPage() {
    setState(() {
      if (_currentPageIndex < 2) {
        _currentPageIndex++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double responsiveSize = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                color: Color.fromRGBO(2, 68, 149, 1),
                height: screenHeight,
                width: screenWidth,
                child: Column(
                  children: [
                    // IconButton(
                    //   onPressed: () {
                    //     Provider.of<ThemeProvider>(context, listen: false)
                    //         .toggleTheme();
                    //   },
                    //   icon: const Icon(
                    //     Icons.light,
                    //   ),
                    // ),
                    SizedBox(height: screenHeight * 0.10),
                    Stack(
                      children: [
                        OvalMaskedImage(
                          imagePath:
                              'assets/images/4dd4c0123b65a00afe9a99c8646bac7c.jpeg',
                          // Provide your image path here
                          width: 230, // Adjust width as needed
                          height: 100,
                          // Adjust height as needed
                        ),
                        const Positioned(
                          top: 40,
                          left: 10,
                          child: CircleAvatar(
                            backgroundColor: Colors.cyan,
                            radius: 6,
                          ),
                        ),
                        const Positioned(
                          top: 290,
                          left: 280,
                          child: CircleAvatar(
                            backgroundColor: Colors.cyan,
                            radius: 3,
                          ),
                        ),
                        const Positioned(
                          top: 10,
                          left: 260,
                          child: CircleAvatar(
                            backgroundColor: Colors.cyan,
                            radius: 6,
                          ),
                        ),
                        const Positioned(
                          top: 250,
                          left: 10,
                          child: CircleAvatar(
                            backgroundColor: Colors.cyan,
                            radius: 8,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.10),
                    Card(
                      color: Color.fromRGBO(1, 50, 110, 1),
                      shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.zero, // Set zero border radius
                      ),
                      child: Container(
                        width: screenWidth,
                        height: screenHeight * 0.40,
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Promote Your Business',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: responsiveSize * 0.09,
                                fontFamily: 'Urbanist-VariableFont_wght',
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: screenHeight * 0.02,
                            ),
                            Text(
                                "Our platform is a powerful tool for businesses as well! Advertise your products or services to a large and engaged audience,",
                                style: TextStyle(
                                    fontSize: responsiveSize * 0.035,
                                    color: Colors.white,
                                    fontFamily: 'Urbanist-VariableFont_wght')),
                            SizedBox(
                              height: screenHeight * 0.02,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                for (int i = 0; i < 3; i++)
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5),
                                    child: CircleAvatar(
                                      radius: 5,
                                      backgroundColor: i == _currentPageIndex
                                          ? Colors.cyan
                                          : Colors.grey,
                                    ),
                                  ),
                              ],
                            ),
                            SizedBox(
                              height: screenHeight * 0.02,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: screenWidth * 0.35,
                                  height: screenHeight * 0.06,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  HomeScreen()),
                                        );
                                      },
                                      child: Text('Skip',
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(1, 50, 110, 1),
                                          ))),
                                ),
                                SizedBox(
                                  width: responsiveSize * 0.15,
                                ),
                                SizedBox(
                                  width: screenWidth * 0.35,
                                  height: screenHeight * 0.06,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomeScreen()),
                                      );
                                    },
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                      ),
                                    ),
                                    child: Container(
                                      width: screenWidth * 0.35,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [Colors.blue, Colors.green],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,

                                          // Set alignment to center to fill the entire button
                                        ),
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Next',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
