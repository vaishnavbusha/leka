import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

String typedvalue = '';
String emailid = '';
String password = '';

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        //resizeToAvoidBottomInset: true,
        backgroundColor: Colors.black,
        body: Column(
          //shrinkWrap: true,
          children: [
            Expanded(
              child: Container(
                color: Colors.black,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          'Login',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.kanit(
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                      TextBox(
                        hinttext: 'enter your mail-ID',
                        labeltext: 'Email',
                        obscure: false,
                        ispass: false,
                        kbtype: TextInputType.emailAddress,
                      ),
                      TextBox(
                        hinttext: 'enter your password',
                        labeltext: 'Password',
                        obscure: true,
                        ispass: true,
                        kbtype: TextInputType.visiblePassword,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          onPressed: () {
                            print(emailid);
                            print(password);
                          },
                          color: Colors.black,
                          elevation: 5,
                          minWidth: 350,
                          height: 50,
                          child: Text(
                            'Login',
                            style: GoogleFonts.kanit(
                                textStyle: TextStyle(color: Colors.white),
                                fontSize: 19),
                          ),
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.all(30.0),
                      //   child: RaisedButton(

                      //     elevation: 4,
                      //     onPressed: () {},
                      //     color: Colors.black,
                      //     child: Text(
                      //       'Login',
                      //       style: GoogleFonts.kanit(
                      //           textStyle: TextStyle(color: Colors.white)),
                      //     ),
                      //     shape: RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.circular(10),
                      //     ),
                      //   ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 80),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Dont have an account ?',
                              style: GoogleFonts.kanit(
                                  textStyle: TextStyle(fontSize: 17)),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                ' Sign Up',
                                style: GoogleFonts.kanit(
                                    textStyle: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffFAFAFA),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    //topRight: Radius.circular(30.0),
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

class TextBox extends StatelessWidget {
  TextBox(
      {required this.hinttext,
      required this.labeltext,
      required this.obscure,
      required this.kbtype,
      required this.ispass});
  final String hinttext;
  final String labeltext;
  final bool obscure;
  final TextInputType kbtype;
  final bool ispass;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
      child: TextField(
        keyboardType: kbtype,
        obscureText: obscure,
        //autofocus: true,
        onChanged: (val) {
          ispass ? password = val : emailid = val;
        },
        decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: GoogleFonts.kanit(
            textStyle: TextStyle(
              color: Colors.black54,
            ),
          ),
          labelText: labeltext,
          labelStyle: GoogleFonts.kanit(
            textStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 18,
                letterSpacing: 1),
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
