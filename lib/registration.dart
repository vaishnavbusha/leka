import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:leka/constants.dart';
import 'package:leka/login.dart';

class Registrationpage extends StatefulWidget {
  static const String id = 'registrationpage';
  @override
  _RegistrationpageState createState() => _RegistrationpageState();
}

class _RegistrationpageState extends State<Registrationpage> {
  late String name;
  late String email;
  late String password;
  late String cpassword;
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
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.keyboard_backspace,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 85),
                      child: Text(
                        'Sign Up',
                        style: GoogleFonts.kanit(
                            textStyle:
                                TextStyle(color: Colors.white, fontSize: 30)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 30),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          //autofocus: true,
                          onChanged: (val) {
                            name = val;
                          },
                          decoration: InputDecoration(
                            hintText: 'enter your name',
                            hintStyle: GoogleFonts.kanit(
                              textStyle: ktextfieldhinttextstyle,
                            ),
                            labelText: 'Name',
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
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 30),
                        child: TextField(
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
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
                              borderSide: BorderSide(color: Colors.black),
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
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 40),
                        child: TextField(
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          //autofocus: true,
                          onChanged: (val) {
                            cpassword = val;
                          },
                          decoration: InputDecoration(
                            hintText: 'Confirm your password',
                            hintStyle: GoogleFonts.kanit(
                              textStyle: ktextfieldhinttextstyle,
                            ),
                            labelText: 'Confirm Password',
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
                              borderRadius: BorderRadius.circular(15)),
                          onPressed: () {
                            // print(email);
                            // print(password);
                          },
                          color: Colors.black,
                          elevation: 5,
                          minWidth: 350,
                          height: 50,
                          child: Text(
                            'Register',
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
                        padding: const EdgeInsets.only(top: 60),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already have an account ?',
                              style: GoogleFonts.kanit(
                                  textStyle: TextStyle(fontSize: 17)),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, Loginpage.id);
                              },
                              child: Text(
                                'Sign in',
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
