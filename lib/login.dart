import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:leka/constants.dart';
import 'package:leka/registration.dart';

class Loginpage extends StatefulWidget {
  static const String id = 'loginpage';
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        //resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: Column(
          //shrinkWrap: true,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.black,
                    child: CircleAvatar(
                      maxRadius: 60,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.mail,
                        color: Colors.black87,
                        size: 90,
                      ),
                    ),
                  ),
                  // Text(
                  //   'MAIL',
                  //   style: GoogleFonts.nunito(
                  //       textStyle: TextStyle(
                  //           color: Colors.white,
                  //           fontSize: 25,
                  //           fontWeight: FontWeight.bold,
                  //           letterSpacing: 2.5)),
                  // ),
                ],
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
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 30),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          //autofocus: true,
                          onChanged: (val) {
                            email = val;
                          },
                          decoration: InputDecoration(
                            hintText: 'enter your Email-ID',
                            hintStyle: GoogleFonts.kanit(
                              textStyle: ktextfieldhinttextstyle,
                            ),
                            labelText: 'Email',
                            labelStyle: GoogleFonts.kanit(
                              textStyle: ktextfieldslabeltextstyle,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 30),
                        child: TextField(
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          //autofocus: true,
                          onChanged: (val) {
                            password = val;
                          },
                          decoration: InputDecoration(
                            hintText: 'enter your password',
                            hintStyle: GoogleFonts.kanit(
                              textStyle: ktextfieldhinttextstyle,
                            ),
                            labelText: 'Password',
                            labelStyle: GoogleFonts.kanit(
                              textStyle: ktextfieldslabeltextstyle,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          onPressed: () {
                            print(email);
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
                        padding: const EdgeInsets.only(top: 70),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Dont have an account ?',
                              style: GoogleFonts.kanit(
                                  textStyle: TextStyle(fontSize: 17)),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, Registrationpage.id);
                              },
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
                    topLeft: Radius.circular(35.0),
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
