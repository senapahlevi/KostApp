import 'package:flutter/material.dart';
import 'package:kostapp/thembasic.dart';
//import 'package:google_fonts/google_fonts.dart';

class BasicHomePage extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Profile Picture',
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Image.asset(
                  'assets/images/photoprofile.png',
                  height: 100,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Heni Visena',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Software Engineer',
                  style: TextStyle(
                    color: greyColor,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Wrap(
                  spacing: 30,
                  runSpacing: 40,
                  children: [
                    Image.asset(
                      'assets/images/item1.png',
                      height: 80,
                    ),
                    Image.asset(
                      'assets/images/item2.png',
                      height: 80,
                    ),
                    Image.asset(
                      'assets/images/item3.png',
                      height: 80,
                    ),
                    Image.asset(
                      'assets/images/item4.png',
                      height: 80,
                    ),
                    Image.asset(
                      'assets/images/item5.png',
                      height: 80,
                    ),
                    Image.asset(
                      'assets/images/item6.png',
                      height: 80,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 200,
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              height: 290,
                              padding: EdgeInsets.symmetric(
                                vertical: 50,
                              ),
                              color: whiteColor,
                              child: Column(
                                children: [
                                  Text(
                                    "Upload Photo",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: greyColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Upload your beautifull pict with \n good memorize",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: greyColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Container(
                                    width: 224,
                                    height: 55,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                      ),
                                      child: Text(
                                        "Continue",
                                        style: TextStyle(
                                            fontSize: 18, color: orangeColors),
                                      ),
                                      onPressed: () {},
                                    ),
                                  )
                                ],
                              ),
                            );
                          });
                    },
                    child: Text(
                      "Upload Photo",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
