import 'package:flutter/material.dart';
import 'package:kostapp/themekost.dart';

class BottomNavbarItem extends StatelessWidget {
  //const BottomNavbarItem({ Key? key }) : super(key: key);
  final String imageUrl;
  final bool isActive;
  BottomNavbarItem({required this.imageUrl, required this.isActive});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          imageUrl,
          width: 26,
        ),
        isActive
            ? Container(
                width: 30,
                height: 4,
                decoration: BoxDecoration(
                  color: purpleColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(1000),
                  ),
                ),
              )
            : Container(),
        Spacer(),
      ],
    );
  }
}
