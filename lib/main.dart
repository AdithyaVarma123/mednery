import 'package:flutter/material.dart';
import 'package:mednery/screens/authenticate.dart';
import 'package:mednery/screens/homepage.dart';
import 'package:mednery/screens/signinpage.dart';
import 'package:mednery/screens/signuppage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homepage(),
    );
  }
}
