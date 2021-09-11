// // ignore: unused_import
// import 'package:covols/screens/login.dart';
// import 'package:covols/screens/selectionscreen.dart';
// import 'package:covols/states/currentUser.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// enum AuthStatus {
//   notLoggedIn,
//   loggedIn,
// }

// class OurRoot extends StatefulWidget {
//   @override
//   _OurRootState createState() => _OurRootState();
// }

// class _OurRootState extends State<OurRoot> {
//   AuthStatus _authStatus = AuthStatus.notLoggedIn;
//   @override
//   void didChangeDependencies() async {
//     // ignore: todo
//     // TODO: implement didChangeDependencies
//     super.didChangeDependencies();
//     CurrentUser _currentUser = Provider.of<CurrentUser>(context, listen: false);
//     String _returnString = await _currentUser.onStartUp();
//     if (_returnString == "success") {
//       setState(() {
//         _authStatus = AuthStatus.loggedIn;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     Widget retVal;

//     switch (_authStatus) {
//       case AuthStatus.notLoggedIn:
//         retVal = LoginScreen();
//         break;
//       case AuthStatus.loggedIn:
//         retVal = SelectionScreen();
//         break;
//       default:
//     }
//     return retVal;
//   }
// }
