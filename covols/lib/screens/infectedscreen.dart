// import 'package:webview_flutter/webview_flutter.dart';
// import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

const URL =
    "https://docs.google.com/forms/d/e/1FAIpQLSfGDNBVq1ogaCVwVI1FVqUvZ8q0k_jDfRVUXcIfdjkLq-zMlw/viewform?usp=sf_link";

void main() {
  runApp(MaterialApp(
    home: InfectedScreen(),
  ));
}

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

class InfectedScreen extends StatelessWidget {
  Future _launchURL() async {
    const url =
        'https://docs.google.com/forms/d/e/1FAIpQLSfGDNBVq1ogaCVwVI1FVqUvZ8q0k_jDfRVUXcIfdjkLq-zMlw/viewform?usp=sf_link';
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
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Infected'),
      ),
      body: Container(
        child: Container(
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: new AssetImage("lib/images/background.png"),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: SizeConfig.blockSizeVertical * 21.3,
                left: SizeConfig.blockSizeVertical * 3.7,
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
                        _launchURL();
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
              Positioned(
                top: SizeConfig.blockSizeVertical * 38,
                left: SizeConfig.blockSizeVertical * 3.7,
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
            ],
          ),
        ),
      ),
    );
  }
}
