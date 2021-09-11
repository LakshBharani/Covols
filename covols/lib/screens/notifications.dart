import 'package:flutter/material.dart';
import 'messaging_widget.dart';
// import 'package:covols/models/message.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        backgroundColor: Colors.redAccent,
      ),
      body: MessagingWidget(),
    );
  }
}
