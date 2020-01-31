import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MerchantDetails extends StatefulWidget {
  @override
  _MerchantDetailsState createState() => _MerchantDetailsState();
}

class _MerchantDetailsState extends State<MerchantDetails> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(
              Icons.arrow_back,
              color: Colors.indigo[900],
              size: 28,
            ),
          ),
          bottom: TabBar(
            indicatorWeight: 3,
            indicatorColor: Colors.indigo,
            tabs: <Widget>[
              Column(
                children: <Widget>[
                  Icon(
                    Icons.payment,
                    color: Colors.indigo[900],
                    size: 24,
                  ),
                  Text(
                    'Business\nInformation',
                    style: GoogleFonts.dosis(
                      textStyle: TextStyle(
                        color: Colors.indigo[900],
                        fontSize: 22,
                        fontWeight: FontWeight.w500
                      )
                    ),textAlign: TextAlign.center,)
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.payment,
                    color: Colors.indigo[900],
                    size: 24,
                  ),
                  Text(
                    'Payment',
                    style: GoogleFonts.dosis(
                      textStyle: TextStyle(
                        color: Colors.indigo[900],
                        fontSize: 22,
                        fontWeight: FontWeight.w500
                      )
                    ),)
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.receipt,
                    color: Colors.indigo[900],
                    size: 24,
                  ),
                  Text(
                    'Summary',
                    style: GoogleFonts.dosis(
                      textStyle: TextStyle(
                        color: Colors.indigo[900],
                        fontSize: 22,
                        fontWeight: FontWeight.w500
                      )
                    ),)
                ],
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            _businessContainer(),
            _paymentContainer(),
            _summaryContainer(),
          ],
        ),
      ),
    );
  }
}

Widget _businessContainer() {
  return Container();
}

Widget _paymentContainer() {
  return Container();
}

Widget _summaryContainer() {
  return Container();
}