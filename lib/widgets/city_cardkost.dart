import 'package:flutter/material.dart';
import 'package:kostapp/models/city.dart';
import 'package:kostapp/themekost.dart';

class CityCardKost extends StatelessWidget {
  //const CityCardKost({ Key? key }) : super(key: key);
  final City city;
  CityCardKost(this.city);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 120,
        color: Color(0xffF6F7F8),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  city.imageUrl,
                  width: 120,
                  height: 102,
                  fit: BoxFit.cover,
                ),
                city.isPopular
                    ? Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 50,
                          height: 30,
                          child: Container(
                            width: 50,
                            height: 30,
                            decoration: BoxDecoration(
                                color: purpleColor,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(36),
                                )),
                            child: Center(
                              child: Image.asset(
                                'assets/pic/star.png',
                                height: 32,
                                width: 32,
                              ),
                            ),
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              city.name,
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
