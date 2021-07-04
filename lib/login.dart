import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:leka/constants.dart';
import 'package:leka/registration.dart';
import 'package:sizer/sizer.dart';
//import 'package:form_field_validator/form_field_validator.dart';

class Loginpage extends StatefulWidget {
  static const String id = 'loginpage';
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  var email;
  var password;
  bool isvisible = true;
  String errormsg = '';
  final passwordcontroller = TextEditingController();
  //GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        //resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xff222831),
        body: Column(
          //shrinkWrap: true,
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
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                          //autofocus: true,
                          onChanged: (val) {
                            email = val;
                          },
                          decoration: InputDecoration(
                            //fillColor: Color(0xfff7fafc),
                            //filled: true,
                            hintText: 'enter your Email-ID',
                            hintStyle: GoogleFonts.kanit(
                              textStyle: ktextfieldhinttextstyle,
                            ),
                            labelText: 'Email',
                            labelStyle: GoogleFonts.kanit(
                              textStyle: ktextfieldslabeltextstyle,
                            ),
                            border: InputBorder.none,
                            // border: OutlineInputBorder(
                            //   borderSide: BorderSide(color: Colors.transparent),
                            //   borderRadius: BorderRadius.circular(10),
                            // ),
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
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Colors.black,
                            //     blurRadius: 2,
                            //     spreadRadius: -17,
                            //     offset: Offset(15, 15),
                            //   )
                            // ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          style: GoogleFonts.kanit(
                              textStyle: TextStyle(color: Colors.black54)),
                          //validator: passwordvalidator,
                          //key: formkey,
                          controller: passwordcontroller,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: isvisible,
                          //autofocus: true,
                          onChanged: (val) {
                            password = val;
                          },
                          decoration: InputDecoration(
                            // fillColor: Color(0xfff7fafc),
                            // filled: true,
                            //errorText: errormsg,
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
                            // border: OutlineInputBorder(
                            //   borderSide: BorderSide(color: Colors.black),
                            //   borderRadius: BorderRadius.circular(10),
                            // ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: () {
                          print(email);
                          print(password);
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
                  //color: Colors.blue,
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
