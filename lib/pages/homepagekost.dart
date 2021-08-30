//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:kostapp/models/city.dart';
//import 'package:kostapp/models/space.dart';
import 'package:kostapp/models/tips.dart';
import 'package:kostapp/provider/space_provider.dart';
//import 'package:kostapp/provider/space_provider.dart';
import 'package:kostapp/themekost.dart';
import 'package:kostapp/widgets/bottom_navbar_item.dart';
import 'package:kostapp/widgets/city_cardkost.dart';
//import 'package:kostapp/widgets/space_card.dart';
import 'package:kostapp/widgets/tips_card.dart';
import 'package:provider/provider.dart';

class HomePageKost extends StatelessWidget {
  // const HomePageKost({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var spaceProvider = Provider.of<SpaceProvider>(context);
    spaceProvider.getRecommendedSpaces();
    return Scaffold(
      body: SafeArea(
        bottom: false,
        //NOTE:TITLE
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                "Explore Now",
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                "Mencari kost dengan kenyamanan lebih",
                style: greyTextStyle.copyWith(
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Text(
                "Popular Cities",
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 24),
                  CityCardKost(
                    City(
                      id: 1,
                      imageUrl: 'assets/pic/jkt.png',
                      name: "Jakarta",
                    ),
                  ),
                  SizedBox(width: 20),
                  CityCardKost(
                    City(
                      id: 2,
                      imageUrl: 'assets/pic/bdo.png',
                      name: "Bandung",
                      isPopular: true,
                    ),
                  ),
                  SizedBox(width: 20),
                  CityCardKost(
                    City(
                      id: 3,
                      imageUrl: 'assets/pic/sby.png',
                      name: "Surabaya",
                    ),
                  ),
                  SizedBox(width: 24),
                  //NOTE: ini Recommendation
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Text(
                'Popular Cities',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: Column(
                children: [
                  /* SpaceCard(
                    Space(
                        id: 1,
                        city: 'Bandung',
                        imageUrl: 'assets/pic/kuretakeso.png',
                        name: 'Kuretakeso Kost',
                        price: 52,
                        country: 'Indonesia',
                        rating: 4),
                  ),*/
                  SizedBox(
                    height: 30,
                  ),
                  /*   SpaceCard(
                   Space(
                        id: 2,
                        city: 'Bogor',
                        imageUrl: 'assets/pic/roemah.png',
                        name: 'Kuretakeso Kost',
                        price: 22,
                        country: 'Indonesia',
                        rating: 5),
                  ),*/
                  SizedBox(
                    height: 30,
                  ),
                  /*  SpaceCard(
                    Space(
                      id: 3,
                      city: 'Jakarta',
                      imageUrl: 'assets/pic/darrling.png',
                      name: 'Darrling\nApartement',
                      price: 72,
                      country: 'Indonesia',
                      rating: 5,
                    ),
                  ),*/
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            //NOTE: Tips & Guideline
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Text(
                'Tips & Guidance',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: Column(
                children: [
                  TipsCard(
                    Tips(
                      id: 1,
                      title: 'City Guideline',
                      imageUrl: 'assets/pic/cg.png',
                      updatedAt: '20 Apr',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TipsCard(
                    Tips(
                      id: 2,
                      title: 'Jakarta Fair ',
                      imageUrl: 'assets/pic/jf.png',
                      updatedAt: '20 Apr',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 52 + edge,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(
          horizontal: edge,
        ),
        decoration: BoxDecoration(
          color: Color(0xffF6F7F8),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/pic/Icon_home_active.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/pic/Icon_mail.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/pic/Icon_card.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/pic/Icon_loved.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
