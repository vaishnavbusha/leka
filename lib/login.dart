import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:leka/constants.dart';
import 'package:leka/mainscreen.dart';
import 'package:leka/registration.dart';
import 'package:sizer/sizer.dart';

class Loginpage extends StatefulWidget {
  static const String id = 'loginpage';
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final _auth = FirebaseAuth.instance;
  var email;
  var password;
  bool isvisible = true;
  String errormsg = '';
  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Color(0xff222831),
        body: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Color(0xff222831),
                    child: CircleAvatar(
                      maxRadius: 60,
                      backgroundColor: Color(0xffF0F0F0),
                      child: Icon(
                        Icons.mail,
                        color: Color(0xff222831),
                        size: 90,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 3.h,
                      ),
                      Text(
                        'Login',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.kanit(
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 40,
                                fontWeight: FontWeight.w500)),
                      ),
                      SizedBox(
                        height: 3.h,
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
                        width: 88.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          style: GoogleFonts.kanit(
                              textStyle: TextStyle(color: Colors.black54)),
                          controller: passwordcontroller,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: isvisible,
                          onChanged: (val) {
                            password = val;
                          },
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(isvisible
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onPressed: () {
                                setState(() {
                                  isvisible = !isvisible;
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
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: () async {
                          try {
                            final user = await _auth.signInWithEmailAndPassword(
                                email: email, password: password);
                            if (user != null) {
                              Navigator.pushNamed(context, MainScreen.id);
                            }
                          } catch (e) {
                            print(e);
                          }
                        },
                        color: Colors.black,
                        elevation: 5,
                        minWidth: 85.w,
                        height: 50,
                        child: Text(
                          'Login',
                          style: GoogleFonts.kanit(
                              textStyle: TextStyle(color: Colors.white),
                              fontSize: 19),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
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
