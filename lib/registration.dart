import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:leka/constants.dart';
import 'package:leka/login.dart';
import 'package:leka/mainscreen.dart';
import 'package:sizer/sizer.dart';

class Registrationpage extends StatefulWidget {
  static const String id = 'registrationpage';
  @override
  _RegistrationpageState createState() => _RegistrationpageState();
}

class _RegistrationpageState extends State<Registrationpage> {
  final _auth = FirebaseAuth.instance;
  late String name;
  late String email;
  late String password;
  late String cpassword;
  bool isvisiblep = true;
  bool isvisiblecp = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Color(0xff222831),
        body: Column(
          children: [
            Expanded(
              child: Container(
                color: Color(0xff222831),
                child: Row(
                  children: [
                    IconButton(
                      padding: EdgeInsets.only(top: 1.h, left: 3.h),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.keyboard_backspace,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    SizedBox(
                      width: 27.w,
                    ),
                    Text(
                      'Sign Up',
                      style: GoogleFonts.kanit(
                          textStyle:
                              TextStyle(color: Colors.white, fontSize: 30)),
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
                      SizedBox(
                        height: 5.h,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        width: 88.w,
                        child: TextField(
                          style: GoogleFonts.kanit(
                              textStyle: TextStyle(color: Colors.black54)),
                          keyboardType: TextInputType.emailAddress,
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
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        width: 88.w,
                        child: TextField(
                          style: GoogleFonts.kanit(
                              textStyle: TextStyle(color: Colors.black54)),
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: false,
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
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        width: 88.w,
                        child: TextField(
                          style: GoogleFonts.kanit(
                              textStyle: TextStyle(color: Colors.black54)),
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: isvisiblep,
                          onChanged: (val) {
                            password = val;
                          },
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(isvisiblep
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onPressed: () {
                                setState(() {
                                  isvisiblep = !isvisiblep;
                                });
                              },
                            ),
                            hintText: 'enter your password',
                            hintStyle: GoogleFonts.kanit(
                              textStyle: ktextfieldhinttextstyle,
                            ),
                            labelText: 'Password',
                            labelStyle: GoogleFonts.kanit(
                              textStyle: ktextfieldslabeltextstyle,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        width: 88.w,
                        child: TextField(
                          style: GoogleFonts.kanit(
                              textStyle: TextStyle(color: Colors.black54)),
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: isvisiblecp,
                          onChanged: (val) {
                            cpassword = val;
                          },
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(isvisiblecp
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onPressed: () {
                                setState(() {
                                  isvisiblecp = !isvisiblecp;
                                });
                              },
                            ),
                            hintText: 'Confirm your password',
                            hintStyle: GoogleFonts.kanit(
                              textStyle: ktextfieldhinttextstyle,
                            ),
                            labelText: 'Confirm Password',
                            labelStyle: GoogleFonts.kanit(
                              textStyle: ktextfieldslabeltextstyle,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        onPressed: () async {
                          try {
                            final newuser =
                                await _auth.createUserWithEmailAndPassword(
                                    email: email, password: cpassword);
                            if (newuser != null) {
                              Navigator.pushNamed(context, MainScreen.id);
                            }
                            print(newuser);
                            // setState(() {
                            //   showspinner = false;
                            // });
                          } catch (e) {
                            print(e);
                          }
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
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
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
                              ' Sign in',
                              style: GoogleFonts.kanit(
                                  textStyle: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffF6F6F6),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35.0),
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
