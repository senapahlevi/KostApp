import 'package:flutter/material.dart';
import 'package:kostapp/themekost.dart';

class FacilityItem extends StatelessWidget {
  //const FacilityItem({ Key? key }) : super(key: key);
  final String name;
  final String imageUrl;
  final int total;

  FacilityItem({
    required this.name,
    required this.imageUrl,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imageUrl,
          width: 32,
        ),
        SizedBox(
          height: 8,
        ),
        Text.rich(
          TextSpan(
              text: '$total',
              style: purpleTextStyle.copyWith(
                fontSize: 14,
              ),
              children: [
                TextSpan(
                  text: ' $name',
                  style: purpleTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
              ]),
        ),
      ],
    );
  }
}
