import 'package:flutter/material.dart';
import 'package:http/http.dart ' as http;

class SpaceProvider extends ChangeNotifier {
  //const SpaceProvider({ Key? key }) : super(key: key);
  getRecommendedSpaces() async {
    var result = await http
        .get(Uri.parse('https://bwa-cozy.herokuapp.com/recommended-spaces'));
    print(result.statusCode);
    print(result.body);
  }
}
