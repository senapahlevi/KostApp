import 'package:flutter/material.dart';
import 'package:kostapp/models/space.dart';
//import 'package:kostapp/models/city.dart';
import 'package:kostapp/themekost.dart';

class SpaceCard extends StatelessWidget {
  //const SpaceCard({ Key? key }) : super(key: key);

  final Space space;
  SpaceCard(this.space);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Container(
            width: 130,
            height: 110,
            child: Stack(
              children: [
                Image.asset(
                  space.imageUrl,
                  width: 130,
                  height: 102,
                  fit: BoxFit.cover,
                ),
                Align(
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/pic/star.png',
                              height: 23,
                              width: 23,
                            ),
                            Text(
                              '${space.rating}/5',
                              style: whiteTextStyle.copyWith(
                                fontSize: 13,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              space.name,
              style: blackTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text.rich(
              TextSpan(
                text: '\$${space.price}',
                style: purpleTextStyle.copyWith(
                  fontSize: 16,
                ),
                children: [
                  TextSpan(
                    text: '/month',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              '${space.city},${space.country}',
              style: greyTextStyle,
            ),
          ],
        )
      ],
    );
  }
}
