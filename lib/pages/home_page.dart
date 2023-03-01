import 'dart:math';

import 'package:build_with_angga/models/city.dart';
import 'package:build_with_angga/models/guide.dart';
import 'package:build_with_angga/models/space.dart';
import 'package:build_with_angga/provider/space_provider.dart';
import 'package:build_with_angga/theme.dart';
import 'package:build_with_angga/widgets/bottom_nav_bar.dart';
import 'package:build_with_angga/widgets/city_card.dart';
import 'package:build_with_angga/widgets/space_card.dart';
import 'package:build_with_angga/widgets/tips_guide.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var spaceProvider = Provider.of<SpaceProvider>(context);
    spaceProvider.getRecommendedSpace();

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(
              height: edge,
            ),
            // NOTE: TITLE
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                "Explore Now",
                style: blackTextStyle.copyWith(fontSize: 24),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            // NOTE: SUB TITLE
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Mencari Kosan yang cozy',
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // NOTE: POPULAR CITY
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Popular Cities',
                style: regularTextStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            // NOTE: LIST CITIES
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 24),
                  CityCard(City(
                      id: 1,
                      name: 'Jakarta',
                      imageUrl: 'assets/city1.png',
                      isPopuler: false)),
                  SizedBox(width: 20),
                  CityCard(City(
                      id: 1,
                      name: 'Bandung',
                      imageUrl: 'assets/city2.png',
                      isPopuler: true)),
                  SizedBox(width: 20),
                  CityCard(City(
                      id: 1,
                      name: 'Lampung',
                      imageUrl: 'assets/city3.png',
                      isPopuler: false)),
                  SizedBox(width: 24),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // NOTE: RECOMENDED SPACE
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Recommended Space',
                style: regularTextStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Column(
                children: [
                  SpaceCard(Space(
                      id: 1,
                      name: 'Kureaksa Hott',
                      imageUrl: 'assets/space1.png',
                      price: 52,
                      city: 'Bandung',
                      country: 'Germany',
                      rating: 4)),
                  SizedBox(
                    height: 30,
                  ),
                  SpaceCard(Space(
                      id: 2,
                      name: 'Kureaksa Sedang',
                      imageUrl: 'assets/space2.png',
                      price: 72,
                      city: 'Jakarta',
                      country: 'Germany',
                      rating: 3)),
                  SizedBox(
                    height: 30,
                  ),
                  SpaceCard(Space(
                      id: 3,
                      name: 'Kureaksa Panas',
                      imageUrl: 'assets/space3.png',
                      price: 92,
                      city: 'Lampung',
                      country: 'Germany',
                      rating: 5)),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Text(
                'Tips & Guidance',
                style: regularTextStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Column(
                children: [
                  TipsGuide(Guide(
                      id: 1,
                      title: 'City Guidelines',
                      updatedAt: '17 Sept',
                      imageUrl: 'assets/tips1.png')),
                  SizedBox(
                    height: 20,
                  ),
                  TipsGuide(Guide(
                      id: 1,
                      title: 'County Guidelines',
                      updatedAt: '3 Feb',
                      imageUrl: 'assets/tips2.png')),
                ],
              ),
            ),
            SizedBox(
              height:70 +edge,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(horizontal: edge),
        decoration: BoxDecoration(
            color: Color(0xffF6F7F8), borderRadius: BorderRadius.circular(23)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavBarItem('assets/icon_home.png', true),
            BottomNavBarItem('assets/icon_email.png', false),
            BottomNavBarItem('assets/icon_card.png', false),
            BottomNavBarItem('assets/icon_love.png', false),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
