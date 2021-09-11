import 'package:covols/screens/calendar.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:covols/screens/gsheet.dart';
import 'package:covols/screens/infectedscreen.dart';
import 'package:covols/screens/selectionscreen.dart';
import 'package:covols/screens/donate.dart';
import 'package:covols/screens/volunteerscreen.dart';
import 'package:covols/screens/notifications.dart';
import 'package:covols/states/currentUser.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/contact.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final FirebaseMessaging _messaging = FirebaseMessaging();

  @override
  void initState() {
    super.initState();

    _messaging.getToken().then((token) {
      print('token: ' + token);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CurrentUser(),
      child: MaterialApp(home: SelectionScreen(), routes: {
        '/contact': (context) => ContactUs(),
        '/notif': (context) => NotificationScreen(),
        '/donate': (context) => Donation(),
        // '/signup': (context) => SignupScreen(),
        '/sheet': (context) => Gsheet(),
        '/calendar': (context) => Calendar(),
        '/selection': (context) => SelectionScreen(),
        '/volunteer': (context) => VolunteerScreen(),
        '/infected': (context) => InfectedScreen(),
        // '/login': (context) => LoginScreen(),
      }),
    );
  }
}
