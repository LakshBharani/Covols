// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// class SizeConfig {
//   static MediaQueryData _mediaQueryData;
//   static double screenWidth;
//   static double screenHeight;
//   static double blockSizeHorizontal;
//   static double blockSizeVertical;

//   void init(BuildContext context) {
//     _mediaQueryData = MediaQuery.of(context);
//     screenWidth = _mediaQueryData.size.width;
//     screenHeight = _mediaQueryData.size.height;
//     blockSizeHorizontal = screenWidth / 100;
//     blockSizeVertical = screenHeight / 100;
//   }
// }

// final textController = TextEditingController();
// String body;

// class CustomerFeedback extends StatefulWidget {
//   @override
//   _CustomerFeedbackState createState() => _CustomerFeedbackState();
// }

// class _CustomerFeedbackState extends State<CustomerFeedback> {
//   @override
//   void dispose() {
//     // Clean up the controller when the widget is disposed.
//     textController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.deepPurple,
//         title: Text('Feedback'),
//       ),
//       body: SingleChildScrollView(
//         child: Stack(children: [
//           Center(
//             child: Column(
//               children: [
//                 Positioned(
//                   child: Container(
//                     child: Image(
//                       image: AssetImage(
//                         'lib/images/feedback.png',
//                       ),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(10.0),
//                   child: Stack(
//                     children: [
//                       Container(
//                         height: 400,
//                         width: 328,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(24),
//                           gradient: LinearGradient(
//                             colors: [Colors.white, Colors.white],
//                             begin: Alignment.topLeft,
//                             end: Alignment.bottomRight,
//                           ),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.grey,
//                               blurRadius: 11,
//                             ),
//                           ],
//                         ),
//                         child: Column(
//                           children: [
//                             SizedBox(
//                               height: 20,
//                             ),
//                             Container(
//                               padding: EdgeInsets.all(10),
//                               child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Text(
//                                       "Give us your ",
//                                       style: TextStyle(
//                                           fontFamily: 'Poppins',
//                                           color: Colors.indigo[900],
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 20),
//                                     ),
//                                     Text(
//                                       "Feedback",
//                                       style: TextStyle(
//                                           fontFamily: 'Poppins',
//                                           color: Colors.cyan,
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 20),
//                                     ),
//                                   ]),
//                             ),
//                             Container(
//                               padding: EdgeInsets.all(20),
//                               child: TextField(
//                                 controller: textController,
//                                 keyboardType: TextInputType.multiline,
//                                 maxLines: null,
//                                 maxLength: 200,
//                                 decoration: InputDecoration(
//                                   filled: true,
//                                   fillColor: Colors.grey[300],
//                                   border: OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                       color: Colors.deepPurple,
//                                     ),
//                                     borderRadius: BorderRadius.circular(10),
//                                   ),
//                                   hintText: "Tell us what's wrong \n\n\n\n\n\n",
//                                 ),
//                               ),
//                             ),
//                             Container(
//                                 // ignore: deprecated_member_use
//                                 child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 // ignore: deprecated_member_use
//                                 FlatButton(
//                                   color: Colors.deepPurple,
//                                   onPressed: () {
//                                     textController.text = body;
//                                     var mail = 'covols.reach@gmail.com';

//                                     _launchURL(
//                                         String toMailId, String body) async {
//                                       var url =
//                                           'mailto:covols.reach@gmail.com?&body=$body';
//                                       if (await canLaunch(url)) {
//                                         await launch(url);
//                                       } else {
//                                         throw 'Could not launch $url';
//                                       }
//                                     }
//                                   },
//                                   child: Center(
//                                     child: Row(
//                                       children: [
//                                         Text(
//                                           'Send ',
//                                           style: TextStyle(color: Colors.white),
//                                         ),
//                                         Icon(
//                                           Icons.send,
//                                           color: Colors.white,
//                                           size: 15,
//                                         )
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             )),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ]),
//       ),
//     );
//   }
// }
