import 'package:flutter/material.dart';
// import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      withJavascript: true,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Google Calendar'),
      ),
      url:
          "https://calendar.google.com/calendar/embed?src=ll4kddlpsd5a5m2holo7r6qjbc%40group.calendar.google.com&ctz=Asia%2FKolkata",
    );
  }
}
