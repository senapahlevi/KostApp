import 'package:flutter/material.dart';
import 'package:kostapp/themekost.dart';

class DetailPage extends StatelessWidget {
  //const DetailPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Image.asset(
            'assets/pic/thumbnailkuratakeso.png',
            height: 350,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: edge,
              vertical: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  //buat back button make pop
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/pic/btn_back.png',
                    width: 40,
                  ),
                ),
                Image.asset(
                  'assets/pic/whislist.png',
                  width: 40,
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
