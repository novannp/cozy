import 'package:cozy/models/city.dart';
import 'package:cozy/models/space.dart';
import 'package:cozy/models/tips.dart';
import 'package:cozy/theme.dart';
import 'package:cozy/widgets/bottom_nav_item.dart';
import 'package:cozy/widgets/city_card.dart';
import 'package:cozy/widgets/space_card.dart';
import 'package:cozy/widgets/tips_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        // NOTE: TITLE/HEADER
        child: ListView(
          children: [
            SizedBox(height: edge),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Explore Now',
                style: blackTextStyle.copyWith(fontSize: 24),
              ),
            ),
            SizedBox(height: 2),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Mencari kosan yang cozy',
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(height: 30),
            // NOTE: POPULAR CITIES
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Popular Cities',
                style: regularTextStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(height: 16),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: edge),
                  CityCard(
                    City(
                      id: 1,
                      name: 'Jakarta',
                      imageUrl: 'assets/city1.png',
                    ),
                  ),
                  SizedBox(width: 20),
                  CityCard(
                    City(
                      id: 2,
                      name: 'Bandung',
                      imageUrl: 'assets/city2.png',
                      isPopular: true,
                    ),
                  ),
                  SizedBox(width: 20),
                  CityCard(
                    City(
                      id: 3,
                      name: 'Surabaya',
                      imageUrl: 'assets/city3.png',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            //NOTE : RECOMMENDED SPACES
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Recommended Spaces',
                style: regularTextStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Column(
                children: [
                  SpaceCard(
                    Space(
                      id: 1,
                      name: 'sKosan Kumis',
                      imageUrl: 'assets/space1.png',
                      price: 999999,
                      city: 'Pataruman',
                      country: 'Germany',
                      rating: 4,
                    ),
                  ),
                  SizedBox(height: 25),
                  SpaceCard(
                    Space(
                      id: 2,
                      name: 'Orion Kos',
                      imageUrl: 'assets/space2.png',
                      price: 2000,
                      city: 'Jayaraga',
                      country: 'Malaysia',
                      rating: 2,
                    ),
                  ),
                  SizedBox(height: 25),
                  SpaceCard(
                    Space(
                      id: 3,
                      name: 'Kosan Murah',
                      imageUrl: 'assets/space3.png',
                      price: 1000,
                      city: 'Tarogong Kidul',
                      country: 'Mesir',
                      rating: 5,
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
            //TIPS AND GUIDE
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Tips & Guidance',
                style: regularTextStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Column(
                children: [
                  TipsCard(
                    Tips(
                      id: 1,
                      name: 'City Guidlines',
                      imageUrl: 'assets/tips1.png',
                      updatedAt: '24 Apr',
                    ),
                  ),
                  SizedBox(height: 20),
                  TipsCard(
                    Tips(
                      id: 2,
                      name: 'Jakarta Fairship',
                      imageUrl: 'assets/tips2.png',
                      updatedAt: '11 Dec',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.fromLTRB(edge, 0, edge, 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(0xFFF1F1F1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BottomNavItem(
              imageUrl: 'assets/icon_home.png',
              isActive: true,
            ),
            BottomNavItem(
              imageUrl: 'assets/icon_email.png',
              isActive: false,
            ),
            BottomNavItem(
              imageUrl: 'assets/icon_card.png',
              isActive: false,
            ),
            BottomNavItem(
              imageUrl: 'assets/icon_love.png',
              isActive: false,
            ),
          ],
        ),
      ),
    );
  }
}
