import 'package:flutter/material.dart';
import 'package:leka/login.dart';

class MainScreen extends StatefulWidget {
  static const String id = 'mainscreen';
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        onPressed: () {
          Navigator.pushNamed(context, Loginpage.id);
        },
        color: Colors.white,
      ),
    );
  }
}
