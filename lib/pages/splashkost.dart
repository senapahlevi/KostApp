import 'package:flutter/material.dart';
import 'package:kostapp/themekost.dart';

class SplashKostapp extends StatelessWidget {
  //const SplashKostapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 50,
            left: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/pic/logo.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Find Cozy Apartemen\nor  Kost using Kost App",
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Lingkungan yang nyaman tercipta produktivitas \npadaaktivitas anda sehari-hari',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 210,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: purpleColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17.0),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Explore Now",
                    style: whiteTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
