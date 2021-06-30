import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

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
                color: Color(0xff121212),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
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
                      ),
                      TextBox(
                        hinttext: 'enter your password',
                        labeltext: 'Password',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          onPressed: () {},
                          color: Colors.black,
                          elevation: 5,
                          minWidth: 250,
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
                      //Text('asdasd'),
                    ],
                  ),
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffFAFAFA),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60.0),
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
  TextBox({required this.hinttext, required this.labeltext});
  final String hinttext;
  final String labeltext;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
      child: TextField(
        autofocus: true,
        //onChanged: (val) {},
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
