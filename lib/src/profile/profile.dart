import 'package:flutter/material.dart';
import 'package:flutter_japanese_lite/src/signup/signup.dart';
import 'package:flutter_japanese_lite/src/login/login.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Signup(),
    );
  }
}
