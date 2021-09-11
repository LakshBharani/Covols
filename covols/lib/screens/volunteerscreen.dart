// import 'dart:convert';
// import 'package:covols/screens/gsheet.dart';
import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';
// import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'calendar.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    home: VolunteerScreen(),
  ));
}

int a = 0;

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

class VolunteerScreen extends StatelessWidget {
  Future _launchSheet() async {
    const url =
        'https://docs.google.com/spreadsheets/d/1WnKoyti5a8mC9K4HGb0t6bC70xcoW-yeVbVUOzvUqpE/edit#gid=679271977';
    if (await canLaunch(url)) {
      await launch(
        url,
        enableJavaScript: true,
        forceWebView: true,
        forceSafariVC: true,
      );
    } else {
      throw 'Could not launch form';
    }
  }

  Future _launchCalendar() async {
    const url =
        'https://docs.google.com/spreadsheets/d/1WnKoyti5a8mC9K4HGb0t6bC70xcoW-yeVbVUOzvUqpE/edit#gid=679271977';
    if (await canLaunch(url)) {
      await launch(
        url,
        enableJavaScript: true,
        forceWebView: true,
        forceSafariVC: true,
      );
    } else {
      throw 'Could not launch form';
    }
  }

  Future _launchForm() async {
    const url =
        'https://docs.google.com/forms/d/e/1FAIpQLScv_DZEnyD82jVUgVaAAjPPEYRhQwrJlMVgzX18HkvtnndjzA/viewform?usp=sf_link';
    if (await canLaunch(url)) {
      await launch(
        url,
        enableJavaScript: true,
        forceWebView: true,
        forceSafariVC: true,
      );
    } else {
      throw 'Could not launch form';
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Volunteer'),
      ),
      body: Center(
        child: Container(
          child: Container(
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    decoration: new BoxDecoration(
                      image: new DecorationImage(
                        image: new AssetImage(
                            "lib/images/volunteerbackground.png"),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: SizeConfig.blockSizeVertical * 21,
                  left: SizeConfig.blockSizeVertical * 4,
                  child: Container(
                    height: 80,
                    width: 80,
                    child: Material(
                      // borderRadius: BorderRadius.circular(400.0),

                      // shadowColor: Colors.white,
                      color: Colors.white,
                      elevation: 7.2,

                      // ignore: deprecated_member_use
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/sheet');
                        },
                        child: Center(
                          child: Stack(
                            children: [
                              Image.asset('lib/images/gsheets.png'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // Positioned(
                //   top: SizeConfig.blockSizeVertical * 34,
                //   left: SizeConfig.blockSizeVertical * 7,
                //   child: Container(
                //     height: 70.0,
                //     width: 100.0,
                //     child: Opacity(
                //       opacity: 0.3,
                //       child: Material(
                //         borderRadius: BorderRadius.circular(40.0),
                //         shadowColor: Colors.redAccent,
                //         color: Colors.redAccent,
                //         elevation: 7.2,
                //         // ignore: deprecated_member_use
                //         child: FlatButton(
                //           onPressed: () {
                //             _launchForm();
                //           },
                //           child: Center(
                //             child: Text(
                //               'Form',
                //               style: TextStyle(
                //                   fontSize: 15.0,
                //                   color: Colors.white,
                //                   fontFamily: 'Montserrat',
                //                   fontWeight: FontWeight.bold),
                //             ),
                //           ),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                Positioned(
                  top: SizeConfig.blockSizeVertical * 54,
                  left: SizeConfig.blockSizeVertical * 4,
                  child: Container(
                    height: 80,
                    width: 80,
                    child: Material(
                      // borderRadius: BorderRadius.circular(400.0),

                      // shadowColor: Colors.white,
                      color: Colors.white,
                      elevation: 7.2,

                      // ignore: deprecated_member_use
                      child: FlatButton(
                        onPressed: () {
                          _launchForm();
                        },
                        child: Center(
                          child: Stack(
                            children: [
                              Image.asset('lib/images/forms.png'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // Positioned(
                //   top: SizeConfig.blockSizeVertical * 58.0,
                //   right: SizeConfig.blockSizeVertical * 6.5,
                //   child: Container(
                //     height: 72.0,
                //     width: 100.0,
                //     child: Opacity(
                //       opacity: 0.0,
                //       child: Material(
                //         borderRadius: BorderRadius.circular(40.0),
                //         shadowColor: Colors.redAccent,
                //         color: Colors.redAccent,
                //         elevation: 7.2,
                //         // ignore: deprecated_member_use
                //         child: FlatButton(
                //           onPressed: () {
                //             Navigator.pushNamed(context, '/calendar');
                //           },
                //           child: Center(
                //             child: Text(
                //               'Sheets',
                //               style: TextStyle(
                //                   fontSize: 15.0,
                //                   color: Colors.white,
                //                   fontFamily: 'Montserrat',
                //                   fontWeight: FontWeight.bold),
                //             ),
                //           ),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                Positioned(
                  top: SizeConfig.blockSizeVertical * 37,
                  left: SizeConfig.blockSizeVertical * 4,
                  child: Container(
                    height: 80,
                    width: 80,
                    child: Material(
                      // borderRadius: BorderRadius.circular(400.0),

                      // shadowColor: Colors.white,
                      color: Colors.white,
                      elevation: 7.2,

                      // ignore: deprecated_member_use
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/calendar');
                        },
                        child: Center(
                          child: Stack(
                            children: [
                              Image.asset('lib/images/gcalendar.png'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: SizeConfig.blockSizeVertical * 68,
                  left: SizeConfig.blockSizeVertical * 12,
                  child: Container(
                    height: 120,
                    child: Card(
                      child: Image.network(
                          "https://westsidenewsny.com/wp-content/uploads/2020/10/thankyou1-preview.jpg"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class VolunteerScreen extends StatefulWidget {
//   @override
//   _VolunteerScreenState createState() => _VolunteerScreenState();
// }

// class _VolunteerScreenState extends State<VolunteerScreen> {
//   Future _launchURL() async {
//     const url =
//         'https://docs.google.com/forms/d/e/1FAIpQLScv_DZEnyD82jVUgVaAAjPPEYRhQwrJlMVgzX18HkvtnndjzA/viewform?usp=sf_link';
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw 'Could not launch form';
//     }
//   }

// @override
// Widget build(BuildContext context) {
// return Scaffold(
//   backgroundColor: Colors.grey[300],
//   appBar: AppBar(
//     backgroundColor: Colors.deepPurple,
//     title: Text('Volunteer'),
//   ),
//   body: Container(
//     child: Container(
//       child: Stack(
//         children: [
//           Container(
//             decoration: new BoxDecoration(
//               image: new DecorationImage(
//                 image: new AssetImage("lib/images/background.png"),
//               ),
//             ),
//           ),
//           Positioned(
//             top: 160.0,
//             right: 20.0,
//             child: Container(
//               height: 60.0,
//               width: 150.0,
//               child: Material(
//                 borderRadius: BorderRadius.circular(40.0),
//                 shadowColor: Colors.redAccent,
//                 color: Colors.redAccent,
//                 elevation: 7.2,
//                 //ignore: deprecated_member_use
//                 child: FlatButton(
//                   onPressed: () {
//                     _launchURL();
//                   },
//                   child: Center(
//                     child: Text(
//                       'Click Here',
//                       style: TextStyle(
//                           fontSize: 15.0,
//                           color: Colors.white,
//                           fontFamily: 'Montserrat',
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     ),
//   ),
// );
//   }
// }
