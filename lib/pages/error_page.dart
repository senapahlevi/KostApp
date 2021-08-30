import 'package:flutter/material.dart';
import 'package:kostapp/pages/homepagekost.dart';
import 'package:kostapp/themekost.dart';

class ErrorPage extends StatelessWidget {
  //deleted ini

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/pic/404.png',
                width: 300,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Oops youre wrong place!',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Seems like the page that you were\n requested is not working properly\nplease go home now!',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 210,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: purpleColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => HomePageKost()),
                        (route) => false);
                  },
                  child: Text(
                    'Go Home Now',
                    style: whiteTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
