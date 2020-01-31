import 'package:dressing_africa_mock/pages/merchant_details.dart';
import 'package:dressing_africa_mock/pages/select_merchant.dart';
import 'package:dressing_africa_mock/pages/selector.dart';
import 'package:dressing_africa_mock/pages/user_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/selector': (context) => Selector(),
        '/userdetails': (context) => UserDetails(),
        '/merchant': (context) => SelectMerchant(),
        '/merchdetails': (context) => MerchantDetails()},
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) => Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                    flex: 4,
                    child: Stack(
                      children: <Widget>[
                        Image.network(
                          'https://www.dropisle.com/static/media/feature1.273ba80e.png',
                          fit: BoxFit.fitHeight,
                          height: double.maxFinite,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 40),
                          child: Text(
                            'A quality marketplace app\nwasn\'t available for Africa,\nSo, we built it.',
                            style: GoogleFonts.dosis(
                                textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w400,
                                    wordSpacing: 1.0,
                                    letterSpacing: 0.5)),
                          ),
                        ),
                      ],
                    )),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.blueGrey)),
                          child: FlatButton(
                            color: Colors.white,
                            onPressed: () {
                              print('Continue as Guest');
                              Navigator.of(context).pushNamed('/merchant');
                            },
                            child: Text(
                              'Continue as Guest',
                              style: GoogleFonts.dosis(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 22)),
                            ),
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.indigo[900],
                              border: Border.all(color: Colors.blueGrey)),
                          child: FlatButton(
                            color: Colors.indigo[900],
                            onPressed: () {
                              print('Create Free Account');
                              Navigator.of(context).pushNamed('/selector');
                            },
                            child: Text(
                              'Create Free Account',
                              style: GoogleFonts.dosis(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 22)),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: 'Already a member ?',
                                    style: GoogleFonts.dosis(
                                        textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14))),
                                TextSpan(text: ' '),
                                TextSpan(
                                    text: 'Sign In',
                                    style: GoogleFonts.dosis(
                                        textStyle: TextStyle(
                                            color: Colors.indigo[900],
                                            fontWeight: FontWeight.bold)))
                              ]),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
