// // ignore: unused_import
// import 'package:covols/screens/root/root.dart';
// import 'package:covols/screens/selectionscreen.dart';
// import 'package:covols/states/currentUser.dart';
// import 'package:flutter/material.dart';
// import 'package:covols/models/feedback_form.dart';
// import 'package:covols/models/controller.dart';
// import 'package:provider/provider.dart';

// void main() {
//   runApp(MaterialApp(
//     home: LoginScreen(),
//   ));
// }

// class LoginScreen extends StatefulWidget {
//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// int a = 0;
// final _formKey = GlobalKey<FormState>();
// final _scaffoldKey = GlobalKey<ScaffoldState>();

// TextEditingController _emailController = TextEditingController();
// TextEditingController _passwordController = TextEditingController();
// TextEditingController phonenoController = TextEditingController();

// void _loginUser(String email, String password, BuildContext context) async {
//   CurrentUser _currentUser = Provider.of<CurrentUser>(context, listen: false);

//   try {
//     if (await _currentUser.loginUser(email, password)) {
//       Navigator.of(context).push(
//         MaterialPageRoute(builder: (context) => SelectionScreen()),
//       );
//     } else {
//       // ignore: deprecated_member_use
//       Scaffold.of(context).showSnackBar(
//         SnackBar(
//           content: Text('Incorrect Email or password'),
//           duration: Duration(seconds: 2),
//         ),
//       );
//     }
//   } catch (e) {
//     print(e);
//   }
// }

// // ignore: unused_element
// void _submitForm() {
//   if (_formKey.currentState.validate()) {
//     FeedbackForm feedbackForm = FeedbackForm(
//       _emailController.text,
//       _passwordController.text,
//       phonenoController.text,
//     );

//     FormController formController = FormController((String response) {
//       print(response);
//       if (response == FormController.STATUS_SUCCESS) {
//         _showSnackBar("Yay you made it!");
//       } else {
//         _showSnackBar("Error Occured!");
//         a = 0;
//       }
//     });
//     _showSnackBar("Logging you in...");
//     a = 1;
//     formController.submitForm(feedbackForm);
//   }
// }

// _showSnackBar(String message) {
//   final snackbar = SnackBar(
//     content: Text(message),
//   );
//   // ignore: deprecated_member_use
//   _scaffoldKey.currentState.showSnackBar(snackbar);
// }

// class _LoginScreenState extends State<LoginScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         key: _scaffoldKey,
//         resizeToAvoidBottomInset: true,
//         backgroundColor: Colors.white,
//         body: Form(
//           key: _formKey,
//           child: SingleChildScrollView(
//             child: SafeArea(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     child: Stack(
//                       children: [
//                         Container(
//                           padding: EdgeInsets.fromLTRB(15.0, 90.0, 0.0, 0.0),
//                           child: Text(
//                             'Hello',
//                             style: TextStyle(
//                               fontSize: 80.0,
//                               fontFamily: 'Montserrat',
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                         Container(
//                           padding: EdgeInsets.fromLTRB(15.0, 165.0, 0.0, 0.0),
//                           child: Text(
//                             'There',
//                             style: TextStyle(
//                               fontSize: 80.0,
//                               fontFamily: 'Montserrat',
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                         Container(
//                           padding: EdgeInsets.fromLTRB(255.0, 165.0, 0.0, 0.0),
//                           child: Text(
//                             '.',
//                             style: TextStyle(
//                               color: Colors.redAccent,
//                               fontSize: 80.0,
//                               fontFamily: 'Montserrat',
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                         Container(
//                           padding: EdgeInsets.only(
//                               top: 340.0, left: 20.0, right: 20.0),
//                           child: Column(
//                             children: [
//                               TextFormField(
//                                 controller: _emailController,
//                                 validator: (value) {
//                                   if (value.isEmpty) {
//                                     return ("Enter Email");
//                                   } else {
//                                     return null;
//                                   }
//                                 },
//                                 decoration: InputDecoration(
//                                     icon: Icon(Icons.mail),
//                                     labelText: 'EMAIL',
//                                     labelStyle: TextStyle(
//                                       fontFamily: 'Montserrat',
//                                       fontWeight: FontWeight.bold,
//                                       color: Colors.grey,
//                                     ),
//                                     focusedBorder: UnderlineInputBorder(
//                                         borderSide: BorderSide(
//                                             color: Colors.redAccent))),
//                               ),
//                               SizedBox(
//                                 height: 28.0,
//                               ),
//                               TextFormField(
//                                 controller: _passwordController,
//                                 validator: (value) {
//                                   if (value.isEmpty) {
//                                     return ("Enter a password");
//                                   } else {
//                                     return null;
//                                   }
//                                 },
//                                 decoration: InputDecoration(
//                                     icon: Icon(Icons.lock),
//                                     labelText: 'PASSWORD',
//                                     labelStyle: TextStyle(
//                                       fontFamily: 'Montserrat',
//                                       fontWeight: FontWeight.bold,
//                                       color: Colors.grey,
//                                     ),
//                                     focusedBorder: UnderlineInputBorder(
//                                         borderSide: BorderSide(
//                                             color: Colors.redAccent))),
//                                 obscureText: true,
//                               ),
//                               SizedBox(
//                                 height: 28.0,
//                               ),
//                               SizedBox(
//                                 height: 45.0,
//                               ),
//                               Container(
//                                 height: 60.0,
//                                 child: Material(
//                                   borderRadius: BorderRadius.circular(40.0),
//                                   shadowColor: Colors.redAccent,
//                                   color: Colors.redAccent,
//                                   elevation: 7.2,
//                                   // ignore: deprecated_member_use
//                                   child: FlatButton(
//                                     onPressed: () {
//                                       _loginUser(_emailController.text,
//                                           _passwordController.text, context);
//                                       _showSnackBar('Logging in...');
//                                       if (Duration.secondsPerMinute > 2) {
//                                         _showSnackBar(
//                                             'Invalid Email or password');
//                                       }
//                                     },
//                                     child: Center(
//                                       child: Text(
//                                         'LOGIN',
//                                         style: TextStyle(
//                                             color: Colors.white,
//                                             fontFamily: 'Montserrat',
//                                             fontWeight: FontWeight.bold),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 25.0,
//                               ),
//                               Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Text(
//                                       'New to CoVols ?',
//                                       style:
//                                           TextStyle(fontFamily: 'Montserrat'),
//                                     ),
//                                     SizedBox(
//                                       width: 5.0,
//                                     ),
//                                     InkWell(
//                                       onTap: () {
//                                         Navigator.pushNamed(context, '/signup');
//                                       },
//                                       child: Text(
//                                         'Signup',
//                                         style: TextStyle(
//                                             color: Colors.redAccent,
//                                             fontFamily: 'Montserrat'),
//                                       ),
//                                     )
//                                   ]),
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ));
//   }
// }
