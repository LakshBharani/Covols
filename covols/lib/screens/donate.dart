import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Donation extends StatefulWidget {
  @override
  _DonationState createState() => _DonationState();
}

class _DonationState extends State<Donation> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Donation'),
      ),
      url:
          "https://covid.giveindia.org/?utm_source=google&utm_medium=cpc&utm_campaign=SB_GI_Corona_Relief_Fund_Generic_India_April2021&utm_adgroup=123183407722&utm_term=covid%20donation&utm_matchtype=p&utm_device=c",
    );
  }
}
