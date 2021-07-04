import 'package:flutter/material.dart';
import 'package:leka/login.dart';
import 'package:leka/registration.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Loginpage.id,
        routes: {
          Loginpage.id: (context) => Loginpage(),
          Registrationpage.id: (context) => Registrationpage(),
        },
        home: Loginpage(),
      );
    });
  }
}
