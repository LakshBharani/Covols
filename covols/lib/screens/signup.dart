// import 'package:covols/models/feedback_form.dart';
// // ignore: unused_import
// import 'package:covols/screens/login.dart';
// import 'package:covols/states/currentUser.dart';
// import 'package:flutter/material.dart';
// import 'package:covols/models/controller.dart';
// import 'package:provider/provider.dart';

// void main() {
//   runApp(MaterialApp(
//     home: SignupScreen(),
//   ));
// }

// class SignupScreen extends StatefulWidget {
//   @override
//   _SignupScreenState createState() => _SignupScreenState();
// }

// int a = 0;
// final _formKey = GlobalKey<FormState>();
// final _scaffoldKey = GlobalKey<ScaffoldState>();

// TextEditingController _emailController = TextEditingController();
// TextEditingController _confirmPasswordController = TextEditingController();
// TextEditingController _passwordController = TextEditingController();

// void _signUpUser(String email, String password, BuildContext context) async {
//   CurrentUser _currentUser = Provider.of<CurrentUser>(context, listen: false);
//   try {
//     if (await _currentUser.signUpUser(email, password)) {
//       Navigator.pop(context);
//     }
//   } catch (e) {
//     print(e);
//   }
// }

// void _submitForm() {
//   if (_formKey.currentState.validate()) {
//     FeedbackForm feedbackForm = FeedbackForm(
//       _emailController.text,
//       _passwordController.text,
//       _confirmPasswordController.text,
//     );

//     FormController formController = FormController((String response) {
//       print(response);
//       if (response == FormController.STATUS_SUCCESS) {
//         _showSnackBar("Registered");
//       } else {
//         _showSnackBar("Error Occured!");
//         a = 0;
//       }
//     });
//     _showSnackBar("Registered");
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

// class _SignupScreenState extends State<SignupScreen> {
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
//                           padding: EdgeInsets.fromLTRB(15.0, 80.0, 0.0, 0.0),
//                           child: Text(
//                             'Signup',
//                             style: TextStyle(
//                               fontSize: 80.0,
//                               fontFamily: 'Montserrat',
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                         Container(
//                           padding: EdgeInsets.fromLTRB(310.0, 80.0, 0.0, 0.0),
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
//                               top: 280.0, left: 20.0, right: 20.0),
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
//                                     return ("Enter Password");
//                                   } else {
//                                     return null;
//                                   }
//                                 },
//                                 decoration: InputDecoration(
//                                     icon: Icon(Icons.person),
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
//                               TextFormField(
//                                 controller: _confirmPasswordController,
//                                 validator: (value) {
//                                   if (value.isEmpty) {
//                                     return ("Confirm password");
//                                   } else {
//                                     return null;
//                                   }
//                                 },
//                                 decoration: InputDecoration(
//                                     icon: Icon(Icons.lock),
//                                     labelText: 'CONFIRM PASSWORD',
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
//                                       if (_passwordController.text ==
//                                           _confirmPasswordController.text) {
//                                         _signUpUser(_emailController.text,
//                                             _passwordController.text, context);
//                                         _showSnackBar('Signing up...');
//                                         if (Duration.secondsPerMinute > 5) {
//                                           _showSnackBar(
//                                               'Please enter a valid Email');
//                                         }
//                                       } else {
//                                         _showSnackBar("Passwords don't match");
//                                       }
//                                     },
//                                     child: Center(
//                                       child: Text(
//                                         'SIGN UP',
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
