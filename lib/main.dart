import 'package:flutter/material.dart';
//import 'package:kostapp/pages/basichome_page.dart';
import 'package:kostapp/pages/splashkost.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashKostapp(),
    );
  }
}
