import 'package:flutter/material.dart';
import 'package:leka/login.dart';
import 'package:leka/mainscreen.dart';
import 'package:leka/registration.dart';
import 'package:sizer/sizer.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
          MainScreen.id: (context) => MainScreen(),
        },
        home: Loginpage(),
      );
    });
  }
}
