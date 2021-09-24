import 'package:cozy/theme.dart';
import 'package:cozy/widgets/facility_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _launchURL(String url) async => await canLaunch(url)
        ? await launch(url)
        : throw 'Could not launch $url';
    return Scaffold(
        backgroundColor: whiteColor,
        body: SafeArea(
          bottom: false,
          child: Stack(children: [
            Image.asset(
              'assets/thumbnail.png',
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                SizedBox(height: 328),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20)),
                    color: whiteColor,
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: edge),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Kosan Kumis',
                                    style: blackTextStyle.copyWith(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 22),
                                  ),
                                  SizedBox(height: 2),
                                  Text.rich(
                                    TextSpan(
                                        text: 'Rp. 52',
                                        style: purpleTextStyle.copyWith(
                                            fontSize: 16),
                                        children: [
                                          TextSpan(
                                            text: '/bulan',
                                            style: greyTextStyle.copyWith(
                                              fontSize: 16,
                                            ),
                                          ),
                                        ]),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/icon_star.png',
                                    height: 20,
                                  ),
                                  Image.asset(
                                    'assets/icon_star.png',
                                    height: 20,
                                  ),
                                  SizedBox(height: 2),
                                  Image.asset(
                                    'assets/icon_star.png',
                                    height: 20,
                                  ),
                                  SizedBox(height: 2),
                                  Image.asset(
                                    'assets/icon_star.png',
                                    height: 20,
                                  ),
                                  SizedBox(height: 2),
                                  Image.asset(
                                    'assets/icon_star.png',
                                    height: 20,
                                    color: Color(0xff989bA1),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 30),
                        Padding(
                          padding: EdgeInsets.only(left: edge),
                          child: Text(
                            'Main Facilities',
                            style: blackTextStyle.copyWith(
                                fontSize: 16, fontWeight: FontWeight.normal),
                          ),
                        ),
                        SizedBox(height: 12),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: edge),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              FacilityItem(
                                imageUrl: 'assets/icon_kitchen.png',
                                name: ' Kitchen',
                                total: 2,
                              ),
                              FacilityItem(
                                imageUrl: 'assets/icon_bedroom.png',
                                name: ' Bedroom',
                                total: 5,
                              ),
                              FacilityItem(
                                imageUrl: 'assets/icon_cupboard.png',
                                name: ' Lemari',
                                total: 5,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: edge),
                          child: Text(
                            'Photos',
                            style: regularTextStyle.copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 88,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              SizedBox(width: edge),
                              Image.asset(
                                'assets/photo1.png',
                                height: 88,
                                width: 110,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              Image.asset(
                                'assets/photo2.png',
                                height: 88,
                                width: 110,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              Image.asset(
                                'assets/photo3.png',
                                height: 88,
                                width: 110,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                width: edge,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: edge,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: edge),
                          child: Text(
                            'Location',
                            style: regularTextStyle.copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(height: 6),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: edge,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Jln.Merdeka Haurpanggung No.20\nPalembang',
                                style: greyTextStyle,
                              ),
                              IconButton(
                                onPressed: () {
                                  _launchURL('https://maps.google.co.id');
                                },
                                icon: Image.asset(
                                  'assets/btn_map.png',
                                  height: 40,
                                  width: 40,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: edge),
                          width: MediaQuery.of(context).size.width - (2 * edge),
                          // ignore: deprecated_member_use
                          child: RaisedButton(
                            color: purpleColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17)),
                            onPressed: () {},
                            child: Text(
                              'Book Now',
                              style: whiteTextStyle.copyWith(fontSize: 18),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        )
                      ]),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge, vertical: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          'assets/btn_back.png',
                          height: 40,
                        )),
                    InkWell(
                      onLongPress: () {
                        _launchURL('https://maps.google.co.id');
                      },
                      child: Image.asset(
                        'assets/btn_wishlist.png',
                        height: 40,
                      ),
                    ),
                  ]),
            ),
          ]),
        ));
  }
}
