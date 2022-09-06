// ignore_for_file: unused_local_variable, prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:seazone/screens/tapbar.dart';

import '../widgets/DashboardCards.dart';
import '../widgets/offer_item.dart';
import 'hotels_search_screen.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/student_screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).canvasColor;
    return Scaffold(
//      backgroundColor: purpleColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .38,
              width: MediaQuery.of(context).size.width,
//            color: Colors.orangeAccent,
              child: Stack(
//              fit: StackFit.expand,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * .28,
                    width: double.infinity,
                    child: Image.asset(
                      'assets/img_main.jpeg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.height*.01),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'معك لحجز رحلتك',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 30,
                              color: color,
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.black.withOpacity(.3),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'قم بانشاء حساب معنا لتستمتع بمزايا حصرية >',
                              style: TextStyle(color: color),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: MediaQuery.of(context).size.width * .14,
                    left: MediaQuery.of(context).size.width * .14,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyStatelessWidget()),
                            );
                          },
                          child: DashboardCard(
                            name: 'الطيران',
                            imgpath: 'assets/airplane.jpeg',
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HotelsSearchScreen()),
                            );
                          },
                          child: DashboardCard(
                            name: 'الفنادق',
                            imgpath: 'assets/hotel.jpeg',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('عروض مميزة منا لك',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  )),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
//              crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OfferItem(
                      imageURL: 'assets/back2.jpg',
                      title: 'خصومات تصل الي 10%',
                      logoURL: 'assets/airplane.jpeg',
                      description:
                          "عروضنا لا تنتهي عروضنا لا تنتهي عروضنا لا تنتهي عروضنا لا تنتهي ",
                      offerCode: '',
                    ),
                    OfferItem(
                      imageURL: 'assets/back1.jpg',
                      title: 'خصومات تصل الي 10%',
                      logoURL: 'assets/airplane.jpeg',
                      description: "عروضنا لا تنتهي",
                      offerCode: ' ',
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(' افضل ما فى Disneyland Paris',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  )),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
//              crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OfferItem(
                      imageURL: 'assets/back4.jpg',
                      title: 'خصومات تصل الي 10%',
                      logoURL: 'assets/airplane.jpeg',
                      description:
                          "عروضنا لا تنتهي عروضنا لا تنتهي عروضنا لا تنتهي عروضنا لا تنتهي ",
                      offerCode: '',
                    ),
                    OfferItem(
                      imageURL: 'assets/back3.jpg',
                      title: 'خصومات تصل الي 10%',
                      logoURL: 'assets/airplane.jpeg',
                      description: "عروضنا لا تنتهي",
                      offerCode: 'Faissol',
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('عروض ميزة منا لك',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  )),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
//              crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OfferItem(
                      imageURL: 'assets/img_main.jpeg',
                      title: 'خصومات تصل الي 10%',
                      logoURL: 'assets/airplane.jpeg',
                      description:
                          "عروضنا لا تنتهي عروضنا لا تنتهي عروضنا لا تنتهي عروضنا لا تنتهي ",
                      offerCode: 'Faissol',
                    ),
                    OfferItem(
                      imageURL: 'assets/airplane.jpeg',
                      title: 'خصومات تصل الي 10%',
                      logoURL: 'assets/airplane.jpeg',
                      description: "عروضنا لا تنتهي",
                      offerCode: 'Faissol',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
