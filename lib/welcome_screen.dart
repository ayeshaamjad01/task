import 'package:flutter/material.dart';
import 'package:task/clipper.dart';
import 'package:task/home_screen.dart';
import 'package:task/post_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int currentIndex = 0;

  final List<String> images = [
    "assets/images/image1.jpeg",
    "assets/images/image2.jpeg",
    "assets/images/image3.jpeg",
  ];
  final List<String> headingText = [
    "Discover Great Deals",
    "Effortless Selling",
    "Promote Your Business",
  ];

  final List<String> descriptionText = [
    "Have something to sell? Just snap, upload, and price your items. We've made the process simple and quick. Get your items in front of buyers in no time!",
    "Have something to sell? Just snap, upload, and price your items. We've made the process simple and quick. Get your items in front of buyers in no time!",
    "Our platform is a powerful tool for businesses as well! Advertise your products or services to a large and engaged audience,",
  ];
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double responsiveSize = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Center(
      child: Container(
        height: screenHeight,
        width: screenWidth,
        color: Color.fromRGBO(2, 68, 149, 1),
        child: Column(children: <Widget>[
          Expanded(
            child: PageView.builder(
              itemBuilder: (context, index) {
                return Layout(
                    image: images[index],
                    text: headingText[index],
                    description: descriptionText[index]);
              },
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
          // SizedBox(
          //   height: screenHeight * 0.02,
          // ),
        ]),
      ),
    ));
  }
}

class Layout extends StatefulWidget {
  final String image;
  final String text;
  final String description;

  Layout(
      {super.key,
      required this.image,
      required this.text,
      required this.description});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int currentButtonIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double responsiveSize = MediaQuery.of(context).size.width;

    return Container(
        //color: Color.fromRGBO(2, 68, 149, 1),
        //color: Colors.red,
        padding: EdgeInsets.all(20.0),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Container(
                  height: screenHeight * 0.6,
                  child: ClipPath(
                    clipper: PhotoClipper(),
                    child: Container(
                        height: screenHeight * 0.70,
                        width: screenWidth * 0.9,
                        // width: screenWidth * 0.95,
                        // height: screenHeight * 0.80,
                        child: Image.asset(
                          '${widget.image}',
                          fit: BoxFit.fitWidth,
                        )),
                  ),
                ),
                const Positioned(
                  top: 130,
                  left: 70,
                  child: CircleAvatar(
                    backgroundColor: Colors.cyan,
                    radius: 6,
                  ),
                ),
                const Positioned(
                  top: 300,
                  left: 200,
                  child: CircleAvatar(
                    backgroundColor: Colors.cyan,
                    radius: 3,
                  ),
                ),
                const Positioned(
                  top: 80,
                  left: 250,
                  child: CircleAvatar(
                    backgroundColor: Colors.cyan,
                    radius: 6,
                  ),
                ),
                const Positioned(
                  top: 260,
                  left: 300,
                  child: CircleAvatar(
                    backgroundColor: Colors.cyan,
                    radius: 7,
                  ),
                ),
                const Positioned(
                  top: 300,
                  left: 50,
                  child: CircleAvatar(
                    backgroundColor: Colors.cyan,
                    radius: 8,
                  ),
                ),
              ],
            ),
            Card(
              color: Color.fromRGBO(1, 50, 110, 1),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero, // Set zero border radius
              ),
              child: Container(
                width: screenWidth * 0.9,
                //height: screenHeight * 0.35,
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.text,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: responsiveSize * 0.08,
                        fontFamily: 'Urbanist-VariableFont_wght',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    Text(widget.description,
                        style: TextStyle(
                            // fontSize: responsiveSize * 0.035,
                            fontSize: responsiveSize * 0.04,
                            color: Colors.white,
                            fontFamily: 'Urbanist-VariableFont_wght')),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    //navigation circles
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0; i < 3; i++)
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: CircleAvatar(
                              radius: 5,
                              backgroundColor: i == currentButtonIndex
                                  ? Colors.cyan
                                  : Colors.grey,
                            ),
                          ),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    //buttons skip and next
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: screenWidth * 0.3,
                          // height: screenHeight * 0.06,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PostScreen()),
                                );
                              },
                              child: Text('Skip',
                                  style: TextStyle(
                                    color: Color.fromRGBO(1, 50, 110, 1),
                                  ))),
                        ),
                        SizedBox(
                          width: responsiveSize * 0.15,
                        ),
                        SizedBox(
                          width: screenWidth * 0.3,
                          child: Container(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PostScreen()),
                                );
                              },
                              child: Text('Next'),
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
        ));
  }
}
