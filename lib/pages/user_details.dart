import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserDetails extends StatefulWidget {
  @override
  _UserDetailsState createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
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
                    size: 28,
                  ),
                  Text(
                    'Billing',
                    style: GoogleFonts.dosis(
                      textStyle: TextStyle(
                        color: Colors.indigo[900],
                        fontSize: 26,
                        fontWeight: FontWeight.w500
                      )
                    ),)
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.local_shipping,
                    color: Colors.indigo[900],
                    size: 28,
                  ),
                  Text(
                    'Delivery',
                    style: GoogleFonts.dosis(
                      textStyle: TextStyle(
                        color: Colors.indigo[900],
                        fontSize: 26,
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
                    size: 28,
                  ),
                  Text(
                    'Summary',
                    style: GoogleFonts.dosis(
                      textStyle: TextStyle(
                        color: Colors.indigo[900],
                        fontSize: 26,
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
            _billingContainer(),
            _deliveryContainer(),
            _summaryContainer(),
          ],
        ),
      ),
    );
  }
}

Widget _billingContainer() {
  return Container();
}

Widget _deliveryContainer() {
  return Container();
}

Widget _summaryContainer() {
  return Container();
}
