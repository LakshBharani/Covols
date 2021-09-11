import 'package:covols/screens/feedback.dart';
import 'package:covols/screens/contact.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    home: SelectionScreen(),
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

class SelectionScreen extends StatelessWidget {
  Future _launchDonation() async {
    const url =
        'https://covid.giveindia.org/?utm_source=google&utm_medium=cpc&utm_campaign=SB_GI_Corona_Relief_Fund_Generic_India_April2021&utm_adgroup=123183407722&utm_term=covid%20donation&utm_matchtype=p&utm_device=c';
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.redAccent,
      ),
      drawer: new Drawer(
        child: ListView(
          children: [
            // ignore: missing_required_param
            new UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
                  Colors.deepPurple[700],
                  Colors.deepPurpleAccent
                ]),
              ),
              accountName: new Text(
                'CoVols',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              accountEmail: new Text('covols.reach@gmail.com'),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('lib/images/logo3.png'),
              ),
            ),
            // new ListTile(
            //   leading: Icon(Icons.feedback),
            //   title: Text('Feedback'),
            //   onTap: () {
            //     Navigator.of(context).pop();
            //     Navigator.push(
            //       context,
            //       new MaterialPageRoute(
            //         builder: (BuildContext context) => new CustomerFeedback(),
            //       ),
            //     );
            //   },
            // ),

            // new Divider(
            //   indent: 15.0,
            //   endIndent: 15.0,
            //   color: Colors.grey[600],
            // ),
            new ListTile(
              leading: Icon(Icons.call),
              title: Text('Contact Us'),
              onTap: () {
                //launch("tel:+91 997 264 4523");
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (BuildContext context) => new ContactUs(),
                  ),
                );
              },
            ),
            new Divider(
              indent: 15.0,
              endIndent: 15.0,
              color: Colors.grey[600],
            ),
            new ListTile(
              leading: Icon(Icons.attach_money),
              title: Text('Donate'),
              onTap: () {
                launch(
                    "https://covid.giveindia.org/?utm_source=google&utm_medium=cpc&utm_campaign=SB_GI_Corona_Relief_Fund_Generic_India_April2021&utm_adgroup=123183407722&utm_term=covid%20donation&utm_matchtype=p&utm_device=c");
                Navigator.of(context).pop();
              },
            ),
            new Divider(
              indent: 15.0,
              endIndent: 15.0,
              color: Colors.grey[600],
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: true,
      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       Container(
      //         // padding: EdgeInsets.fromLTRB(300.0, 10.0, 0.0, 290.0),
      //         padding: EdgeInsets.all(40.0),
      //         child: Image.asset(
      //           "lib/images/Logo.png",
      //         ),
      //       ),
      //       // ignore: missing_required_param
      //       Container(
      //         padding: EdgeInsets.fromLTRB(15.0, 26.0, 15.0, 0.0),
      //   child: Material(
      //     borderRadius: BorderRadius.circular(40.0),
      //     shadowColor: Colors.deepPurple,
      //     color: Colors.deepPurple,
      //     elevation: 7.2,
      //     // ignore: deprecated_member_use
      //     child: FlatButton(
      //       height: 60.0,
      //       onPressed: () {
      //         Navigator.pushNamed(context, '/infected');
      //       },
      //       child: Center(
      //         child: Text(
      //           'INFECTED',
      //           style: TextStyle(
      //               color: Colors.white,
      //               fontFamily: 'Montserrat',
      //               fontWeight: FontWeight.bold),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
      //       SizedBox(
      //         height: 20,
      //       ),
      //       Container(
      //         padding: EdgeInsets.fromLTRB(15.0, 25.0, 15.0, 0.0),
      //         child: Material(
      //           borderRadius: BorderRadius.circular(40.0),
      //           shadowColor: Colors.deepPurple,
      //           color: Colors.deepPurple,
      //           elevation: 7.2,
      //           // ignore: deprecated_member_use
      //           child: FlatButton(
      //             height: 60.0,
      //             onPressed: () {
      //               Navigator.pushNamed(context, '/volunteer');
      //               print('working');
      //             },
      //             child: Center(
      //               child: Text(
      //                 'VOLUNTEER',
      //                 style: TextStyle(
      //                     color: Colors.white,
      //                     fontFamily: 'Montserrat',
      //                     fontWeight: FontWeight.bold),
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      body: Container(
        child: Stack(
          children: [
            Positioned(
              child: Scaffold(
                backgroundColor: Colors.white,
              ),
            ),
            Positioned(
              top: SizeConfig.blockSizeVertical * 7,
              left: SizeConfig.blockSizeVertical * 0,
              bottom: SizeConfig.blockSizeVertical * 40,
              right: SizeConfig.blockSizeVertical * 0,
              child: Image(
                image: new AssetImage(
                  'lib/images/Logo.png',
                ),
              ),
            ),
            Positioned(
              top: SizeConfig.blockSizeVertical * 55,
              left: SizeConfig.blockSizeVertical * 4,
              right: SizeConfig.blockSizeVertical * 4,
              child: Material(
                borderRadius: BorderRadius.circular(40.0),
                shadowColor: Colors.deepPurple,
                color: Colors.deepPurple,
                elevation: 7.2,
                // ignore: deprecated_member_use
                child: FlatButton(
                  height: 60.0,
                  onPressed: () {
                    Navigator.pushNamed(context, '/infected');
                  },
                  child: Center(
                    child: Text(
                      'INFECTED',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: SizeConfig.blockSizeVertical * 70,
              left: SizeConfig.blockSizeVertical * 4,
              right: SizeConfig.blockSizeVertical * 4,
              child: Material(
                borderRadius: BorderRadius.circular(40.0),
                shadowColor: Colors.deepPurple,
                color: Colors.deepPurple,
                elevation: 7.2,
                // ignore: deprecated_member_use
                child: FlatButton(
                  height: 60.0,
                  onPressed: () {
                    Navigator.pushNamed(context, '/volunteer');
                  },
                  child: Center(
                    child: Text(
                      'VOLUNTEER',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
