import 'package:flutter/material.dart';
//import 'package:kostapp/pages/homepagekost.dart';
import 'package:kostapp/pages/splashkost.dart';
import 'package:kostapp/provider/space_provider.dart';
import 'package:provider/provider.dart';
//import 'package:kostapp/pages/basichome_page.dart';
//import 'package:kostapp/pages/splashkost.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SpaceProvider(),
      child: MaterialApp(
        home: SplashKostapp(),
      ),
    );
  }
}

/*
MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageKost(),
    );
*/