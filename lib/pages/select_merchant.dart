import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectMerchant extends StatefulWidget {
  @override
  _SelectMerchantState createState() => _SelectMerchantState();
}

class _SelectMerchantState extends State<SelectMerchant> {

  String _email, _password, _phone, _confirmPassword;

  String _fname, _lname;

  final focusPassword = FocusNode();

  final focusPhone = FocusNode();

  final focusConfirmPassword = FocusNode();

  final focusEmail = FocusNode();

  final focusLname = FocusNode();

  final TextEditingController _pass = TextEditingController();

  final TextEditingController _confirmPass = TextEditingController();

  void _handleSubmittedFirstName(String fname) {
    _fname = fname;
    print('First Name: ' + _fname);
  }

  void _handleSubmittedPhone(String phone) {
    _phone = phone;
    print('Phone: ' + _phone);
  }

  void _handleSubmittedConfirmPassword(String cpass) {
    _confirmPassword = cpass;
    print('Password (2): ' + _confirmPassword);
  }

  void _handleSubmittedLastName(String lname) {
    _lname = lname;
    print('Last Name: ' + _lname);
  }

  void _handleSubmittedEmail(String email) {
    _email = email;
    print('Email: ' + _email);
  }

  void _handleSubmittedPassword(String password) {
    _password = password;
    print('Password: ' + _password);
  }

  final _emailForm = GlobalKey<FormState>();

  final _lnameForm = GlobalKey<FormState>();

  final _fnameForm = GlobalKey<FormState>();

  final _passwordForm = GlobalKey<FormState>();

  final _confirmPasswordForm = GlobalKey<FormState>();

  final _phoneForm = GlobalKey<FormState>();

  Widget _firstNamewidget() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Names',
              style: GoogleFonts.muli(
                textStyle: TextStyle(
                  color: Colors.indigo[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  letterSpacing: .2,
                ),
              )),
          SizedBox(
            height: 10.0,
          ),
          Form(
            key: _fnameForm,
            child: TextFormField(
                style: GoogleFonts.muli(
                  textStyle: TextStyle(
                    color: Colors.indigo[900],
                    fontSize: 18,
                  ),
                ),
                validator: (fname) {
                  if (fname.isEmpty) {
                    return 'First Name is required';
                  }
                  return null;
                },
                onFieldSubmitted: (value) {
                  FocusScope.of(context).requestFocus(focusLname);
                },
                textInputAction: TextInputAction.next,
                onSaved: _handleSubmittedFirstName,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo[900]),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo[900]),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo[900]),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    errorStyle: TextStyle(
                        fontWeight: FontWeight.w600, letterSpacing: .3),
                    fillColor: Colors.indigo[900],
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    labelText: 'Please enter your names',
                    labelStyle: GoogleFonts.muli(
                      textStyle: TextStyle(
                        color: Colors.indigo[900],
                        fontSize: 14,
                      ),
                    ),
                    icon: Icon(
                      Icons.person,
                      color: Colors.indigo[900],
                    ))),
          ),
          SizedBox(
            height: 10.0,
          )
        ]);
  }

  Widget _locationwidget() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Location',
              style: GoogleFonts.muli(
                textStyle: TextStyle(
                  color: Colors.indigo[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  letterSpacing: .2,
                ),
              )),
          SizedBox(
            height: 10.0,
          ),
          Form(
            child: TextFormField(
                style: GoogleFonts.muli(
                  textStyle: TextStyle(
                    color: Colors.indigo[900],
                    fontSize: 18,
                  ),
                ),
                validator: (fname) {
                  if (fname.isEmpty) {
                    return 'First Name is required';
                  }
                  return null;
                },
                onFieldSubmitted: (value) {
                  FocusScope.of(context).requestFocus(focusLname);
                },
                textInputAction: TextInputAction.next,
                onSaved: _handleSubmittedFirstName,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo[900]),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo[900]),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo[900]),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    errorStyle: TextStyle(
                        fontWeight: FontWeight.w600, letterSpacing: .3),
                    fillColor: Colors.indigo[900],
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    labelText: 'Please enter your location',
                    labelStyle: GoogleFonts.muli(
                      textStyle: TextStyle(
                        color: Colors.indigo[900],
                        fontSize: 14,
                      ),
                    ),
                    icon: Icon(
                      Icons.location_on,
                      color: Colors.indigo[900],
                    ))),
          ),
          SizedBox(
            height: 10.0,
          )
        ]);
  }

  Widget _displayNamewidget() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Display Name',
              style: GoogleFonts.muli(
                textStyle: TextStyle(
                  color: Colors.indigo[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  letterSpacing: .2,
                ),
              )),
          SizedBox(
            height: 10.0,
          ),
          Form(
            child: TextFormField(
                style: GoogleFonts.muli(
                  textStyle: TextStyle(
                    color: Colors.indigo[900],
                    fontSize: 18,
                  ),
                ),
                validator: (fname) {
                  if (fname.isEmpty) {
                    return 'First Name is required';
                  }
                  return null;
                },
                onFieldSubmitted: (value) {
                  FocusScope.of(context).requestFocus(focusLname);
                },
                textInputAction: TextInputAction.next,
                onSaved: _handleSubmittedFirstName,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo[900]),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo[900]),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo[900]),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    errorStyle: TextStyle(
                        fontWeight: FontWeight.w600, letterSpacing: .3),
                    fillColor: Colors.indigo[900],
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    labelText: 'This is how customers will identify you',
                    labelStyle: GoogleFonts.muli(
                      textStyle: TextStyle(
                        color: Colors.indigo[900],
                        fontSize: 14,
                      ),
                    ),
                    icon: Icon(
                      Icons.calendar_today,
                      color: Colors.indigo[900],
                    ))),
          ),
          SizedBox(
            height: 10.0,
          )
        ]);
  }

  Widget _lastNamewidget() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Referred by',
              style: GoogleFonts.muli(
                textStyle: TextStyle(
                  color: Colors.indigo[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  letterSpacing: .2,
                ),
              )),
          SizedBox(
            height: 10.0,
          ),
          Form(
            key: _lnameForm,
            child: TextFormField(
                style: GoogleFonts.muli(
                  textStyle: TextStyle(
                    color: Colors.indigo[900],
                    fontSize: 18,
                  ),
                ),
                validator: (lname) {
                  if (lname.isEmpty) {
                    return 'Last Name is required';
                  }
                  return null;
                },
                focusNode: focusLname,
                onFieldSubmitted: (value) {
                  FocusScope.of(context).requestFocus(focusEmail);
                },
                textInputAction: TextInputAction.next,
                onSaved: _handleSubmittedLastName,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo[900]),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo[900]),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo[900]),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    errorStyle: TextStyle(
                        fontWeight: FontWeight.w600, letterSpacing: .3),
                    fillColor: Colors.indigo[900],
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    labelText: 'Who referred you to us ?',
                    labelStyle: GoogleFonts.muli(
                      textStyle: TextStyle(
                        color: Colors.indigo[900],
                        fontSize: 14,
                      ),
                    ),
                    icon: Icon(
                      Icons.person,
                      color: Colors.indigo[900],
                    ))),
          ),
          SizedBox(
            height: 10.0,
          )
        ]);
  }

  Widget _phoneWidget() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Phone',
              style: GoogleFonts.muli(
                textStyle: TextStyle(
                  color: Colors.indigo[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  letterSpacing: .2,
                ),
              )),
          SizedBox(
            height: 10.0,
          ),
          Form(
            key: _phoneForm,
            child: TextFormField(
                style: GoogleFonts.muli(
                  textStyle: TextStyle(
                    color: Colors.indigo[900],
                    fontSize: 18,
                  ),
                ),
                focusNode: focusPhone,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Phone number is required';
                  }
                  if (value.length != 10) {
                    return 'Phone number should be 10 digits';
                  }
                  if (!value.startsWith("07")) {
                    return 'Phone number should start with "07"';
                  }
                  return null;
                },
                onFieldSubmitted: (value) {
                  FocusScope.of(context).requestFocus(focusPassword);
                },
                textInputAction: TextInputAction.next,
                onSaved: _handleSubmittedPhone,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo[900]),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo[900]),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo[900]),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    errorStyle: TextStyle(
                        fontWeight: FontWeight.w600, letterSpacing: .3),
                    fillColor: Colors.green[400],
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    labelText: 'Please enter your phone number',
                    labelStyle: GoogleFonts.muli(
                      textStyle: TextStyle(
                        color: Colors.indigo[900],
                        fontSize: 14,
                      ),
                    ),
                    icon: Icon(
                      Icons.phone,
                      color: Colors.indigo[900],
                    ))),
          ),
          SizedBox(
            height: 10.0,
          )
        ]);
  }

  Widget _passwordConfirmwidget() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Confirm password',
              style: GoogleFonts.muli(
                textStyle: TextStyle(
                  color: Colors.indigo[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  letterSpacing: .2,
                ),
              )),
          SizedBox(
            height: 10.0,
          ),
          Form(
            key: _confirmPasswordForm,
            child: TextFormField(
                controller: _confirmPass,
                style: GoogleFonts.muli(
                  textStyle: TextStyle(
                    color: Colors.indigo[900],
                    fontSize: 18,
                  ),
                ),
                focusNode: focusConfirmPassword,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Password is required';
                  }
                  if (value.length < 8) {
                    return 'Password should be more than 8 characters';
                  }
                  if (value != _pass.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
                onFieldSubmitted: (value) {
                  FocusScope.of(context).unfocus();
                },
                textInputAction: TextInputAction.done,
                onSaved: _handleSubmittedConfirmPassword,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo[900]),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo[900]),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo[900]),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    errorStyle: TextStyle(
                        fontWeight: FontWeight.w600, letterSpacing: .3),
                    fillColor: Colors.green[400],
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    labelText: 'Enter your password again',
                    labelStyle: GoogleFonts.muli(
                      textStyle: TextStyle(
                        color: Colors.indigo[900],
                        fontSize: 14,
                      ),
                    ),
                    icon: Icon(
                      Icons.vpn_key,
                      color: Colors.indigo[900],
                    ))),
          ),
          SizedBox(
            height: 10.0,
          )
        ]);
  }

  Widget _emailWidget() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Email',
              style: GoogleFonts.muli(
                textStyle: TextStyle(
                  color: Colors.indigo[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  letterSpacing: .2,
                ),
              )),
          SizedBox(
            height: 10.0,
          ),
          Form(
            key: _emailForm,
            child: TextFormField(
                style: GoogleFonts.muli(
                  textStyle: TextStyle(
                    color: Colors.indigo[900],
                    fontSize: 18,
                  ),
                ),
                validator: (email) {
                  if (email.isEmpty) {
                    return 'Email is required';
                  }
                  return null;
                },
                focusNode: focusEmail,
                onFieldSubmitted: (value) {
                  FocusScope.of(context).requestFocus(focusPhone);
                },
                textInputAction: TextInputAction.next,
                onSaved: _handleSubmittedEmail,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo[900]),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo[900]),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    helperStyle:
                        TextStyle(color: Colors.indigo[900], fontSize: 12),
                    helperText:
                        'Hang tight, We will send a verification email to you',
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo[900]),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    errorStyle: TextStyle(
                        fontWeight: FontWeight.w600, letterSpacing: .3),
                    fillColor: Colors.green[400],
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    labelText: 'Please enter your email',
                    labelStyle: GoogleFonts.muli(
                      textStyle: TextStyle(
                        color: Colors.indigo[900],
                        fontSize: 14,
                      ),
                    ),
                    icon: Icon(
                      Icons.email,
                      color: Colors.indigo[900],
                    ))),
          ),
          SizedBox(
            height: 10.0,
          )
        ]);
  }

  Widget _passwordwidget() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Password',
              style: GoogleFonts.muli(
                textStyle: TextStyle(
                  color: Colors.indigo[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  letterSpacing: .2,
                ),
              )),
          SizedBox(
            height: 10.0,
          ),
          Form(
            key: _passwordForm,
            child: TextFormField(
                controller: _pass,
                style: GoogleFonts.muli(
                  textStyle: TextStyle(
                    color: Colors.indigo[900],
                    fontSize: 18,
                  ),
                ),
                validator: (password) {
                  if (password.isEmpty) {
                    return 'Password is required';
                  }
                  if (password.length < 8) {
                    return 'Password should be more than 8 characters';
                  }
                  return null;
                },
                onFieldSubmitted: (value) {
                  FocusScope.of(context).requestFocus(focusConfirmPassword);
                },
                focusNode: focusPassword,
                textInputAction: TextInputAction.next,
                onSaved: _handleSubmittedPassword,
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo[900]),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo[900]),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo[900]),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    helperStyle:
                        TextStyle(color: Colors.indigo[900], fontSize: 12),
                    helperText:
                        'To ensure a safe account, we require your password to\nbe at least 8 characters, including an upper case letter\nand a number',
                    errorStyle: TextStyle(
                        fontWeight: FontWeight.w600, letterSpacing: .3),
                    focusColor: Colors.white,
                    fillColor: Colors.green[400],
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    labelText: 'Enter your password here',
                    labelStyle: GoogleFonts.muli(
                      textStyle: TextStyle(
                        color: Colors.indigo[900],
                        fontSize: 14,
                      ),
                    ),
                    icon: Icon(
                      Icons.vpn_key,
                      color: Colors.indigo[900],
                    ))),
          ),
          SizedBox(
            height: 10,
          )
        ]);
  }

  Widget _buildRegisterBtn() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 25.0),
        width: double.infinity,
        child: RaisedButton(
          elevation: 5.0,
          onPressed: () {
            Navigator.of(context).pushNamed('/merchdetails');
          },
          padding: EdgeInsets.all(15.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          color: Colors.white,
          child: Text('PROCEED',
              style: GoogleFonts.muli(
                textStyle: TextStyle(
                  color: Colors.indigo[900],
                  letterSpacing: 1.5,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              )),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Text(
          'Merchant',
          style: GoogleFonts.dosis(
              textStyle: TextStyle(
                  color: Colors.indigo[900],
                  fontSize: 28,
                  fontWeight: FontWeight.w600)),
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _displayNamewidget(),
            SizedBox(
              height: 20,
            ),
            _lastNamewidget(),
            SizedBox(
              height: 10.0,
            ),
            _emailWidget(),
            SizedBox(
              height: 10,
            ),
            _phoneWidget(),
            SizedBox(
              height: 10,
            ),
            _passwordwidget(),
            SizedBox(
              height: 10,
            ),
            _passwordConfirmwidget(),
            _buildRegisterBtn(),
          ],
        ),
      ),
    );
  }
}
