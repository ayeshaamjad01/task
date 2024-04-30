import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:google_nav_bar/google_nav_bar.dart';

class PostScreen extends StatefulWidget {
  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  int currentIndex = 0;

  final List<String> reelImages = [
    "assets/images/reelimage1.png",
    "assets/images/reelimage2.jpeg",
    "assets/images/reelimage3.jpeg",
  ];
  Map<String, dynamic>? responseData; // Use nullable map type

  Future<void> fetchData() async {
    final response = await http.post(
      Uri.parse('http://95.216.221.251/dev/api/home-posts-test'),

      // Add any required headers here
      // headers: {},
      // Add any request body if needed
      // body: {},
    );
    print(response.body);

    if (response.statusCode == 200) {
      // If the server returns a 200 OK response, parse the JSON
      setState(() {
        responseData = jsonDecode(response.body);
      });
    } else {
      // If the server did not return a 200 OK response,
      // throw an exception.
      throw Exception('Failed to load data');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double responsiveSize = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: responseData != null
            ? ListView.builder(
                itemCount: responseData!['posts'].length,
                itemBuilder: (context, index) {
                  final List<dynamic> posts = responseData!['posts'];

                  return Align(
                    alignment: Alignment.bottomLeft,
                    child: SizedBox(
                      child: Container(
                        width: screenWidth,
                        height: screenHeight,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/reelimage1.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: ListTile(
                          title: Column(
                            //mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    posts[index]['post-title'] ??
                                        'MacBook Air 2013',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: responsiveSize * 0.05),
                                  ),
                                ],
                              ),
                              SizedBox(height: screenHeight * 0.01),
                              Row(
                                children: [
                                  Text(
                                    'AED  ',
                                    style: TextStyle(
                                        color: Colors.deepOrange,
                                        fontSize: responsiveSize * 0.07,
                                        fontFamily:
                                            'Urbanist-VariableFont_wght'),
                                  ),
                                  Text(
                                    posts[index]['price'].toString() ??
                                        'No Price',
                                    style: TextStyle(
                                        color: Colors.deepOrange,
                                        fontSize: responsiveSize * 0.07,
                                        fontFamily:
                                            'Urbanist-VariableFont_wght'),
                                  ),
                                ],
                              ),
                              SizedBox(height: screenHeight * 0.01),
                              // Row(
                              //   children: [
                              //     Text(
                              //       posts[index]['description'] ?? 'No description',
                              //       style: TextStyle(
                              //           color: Colors.white,
                              //           fontSize: responsiveSize * 0.04,
                              //           fontFamily: 'Urbanist-VariableFont_wght'),
                              //       textAlign: TextAlign.left,
                              //     ),
                              //   ],
                              // ),
                              // SizedBox(height: screenHeight * 0.01),
                              Row(
                                children: [
                                  Text(
                                    posts[index]['hashtag_titles'] ??
                                        'No hashtags',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: responsiveSize * 0.04,
                                        fontFamily:
                                            'Urbanist-VariableFont_wght'),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                              SizedBox(height: screenHeight * 0.01),
                              Row(
                                children: [
                                  Text(
                                    posts[index]['country'] ?? 'No Country',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: responsiveSize * 0.05,
                                        fontFamily:
                                            'Urbanist-VariableFont_wght'),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          subtitle: ElevatedButton(
                            onPressed: () {
                              // Add your button functionality here
                            },
                            child: Text('Visit Website'),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              )
            : Center(
                child:
                    CircularProgressIndicator(), // Show loading indicator while fetching data
              ),
      ),
    );
  }
}
