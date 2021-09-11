import 'package:flutter/material.dart';
// import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Gsheet extends StatefulWidget {
  @override
  _GsheetState createState() => _GsheetState();
}

class _GsheetState extends State<Gsheet> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Google Sheets'),
      ),
      url:
          "https://docs.google.com/spreadsheets/d/1WnKoyti5a8mC9K4HGb0t6bC70xcoW-yeVbVUOzvUqpE/edit?usp=sharing",
    );
  }
}
