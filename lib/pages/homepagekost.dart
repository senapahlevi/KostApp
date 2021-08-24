import 'package:flutter/material.dart';
import 'package:kostapp/models/city.dart';
import 'package:kostapp/themekost.dart';
import 'package:kostapp/widgets/city_cardkost.dart';
import 'package:kostapp/widgets/space_card.dart';

class HomePageKost extends StatelessWidget {
  // const HomePageKost({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: edge,
          ),
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
              SpaceCard(),
              SizedBox(
                height: 30,
              ),
              SpaceCard(),
              SizedBox(
                height: 30,
              ),
              SpaceCard(),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
