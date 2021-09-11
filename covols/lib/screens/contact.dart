import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeHorizontal;
  static double blockSizeVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
  }
}

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[500],
        title: Text('Contact Us'),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(children: [
          Center(
            child: Column(
              children: [
                Positioned(
                  child: Container(
                    child: Image(
                      image: AssetImage(
                        'lib/images/contactUs.jpg',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Stack(
                    children: [
                      Container(
                        height: 400,
                        width: 328,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: LinearGradient(
                            colors: [Colors.white, Colors.white],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 11,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Center(
                                child: Text(
                                  'GET IN TOUCH!',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                top: 20,
                                left: 20,
                                bottom: 10,
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.phone_android,
                                    color: Colors.deepPurple,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Call Us: ',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.deepPurple[500],
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  InkWell(
                                    child: Text(
                                      '+91 9845229921',
                                      style: TextStyle(color: Colors.redAccent),
                                    ),
                                    onTap: () {
                                      launch("tel:+91 997 264 4523");
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              indent: 18,
                              endIndent: 18,
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                top: 10,
                                left: 20,
                                bottom: 10,
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.mail,
                                    color: Colors.deepPurple,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Email: ',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.deepPurple[500],
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  InkWell(
                                    child: Text(
                                      'covols.reach@gmail.com',
                                      style: TextStyle(color: Colors.redAccent),
                                    ),
                                    onTap: () {
                                      launch("mailto: covols.reach@gmail.com");
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              indent: 18,
                              endIndent: 18,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Icon(
                              Icons.access_time_rounded,
                              color: Colors.deepPurple,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Monday - Friday',
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              '9am - 5pm',
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Saturday - Sunday',
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              '9am - 12pm',
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
