// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../hotels_search_screen/hotels_search_screen.dart';
import 'DashboardCards.dart';
import 'offer_item.dart';

class HomeItem1 extends StatelessWidget {
  const HomeItem1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).canvasColor;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .38,
            width: MediaQuery.of(context).size.width,
//            color: Colors.orangeAccent,
            child: Stack(
//              fit: StackFit.expand,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .28,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/img_main.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .01),
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
                              builder: (context) => const HotelsSearchScreen(),
                            ),
                          );
                        },
                        child: DashboardCard(
                          name: 'الطيران',
                          imgPath: 'assets/airplane.jpeg',
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const HotelsSearchScreen()),
                          );
                        },
                        child: DashboardCard(
                          name: 'الفنادق',
                          imgPath: 'assets/hotel.jpeg',
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
          Divider(color: Colors.blue),
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
                children: const [
                  OfferItem(
                    imageURL: 'assets/offer3.jpeg',
                    title: 'خصومات تصل الي 10%',
                    logoURL: 'assets/logo1.png',
                    description:
                        "عروضنا لا تنتهي عروضنا لا تنتهي عروضنا لا تنتهي عروضنا لا تنتهي ",
                    offerCode: '',
                  ),
                  OfferItem(
                    imageURL: 'assets/offers1.jpg',
                    title: 'خصومات تصل الي 10%',
                    logoURL: 'assets/logo1.png',
                    description: "عروضنا لا تنتهي",
                    offerCode: ' ',
                  ),
                  OfferItem(
                    imageURL: 'assets/offers2.jpg',
                    title: 'خصومات تصل الي 10%',
                    logoURL: 'assets/logo1.png',
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
                children: const [
                  OfferItem(
                    imageURL: 'assets/offer.png',
                    title: 'خصومات تصل الي 10%',
                    logoURL: 'assets/logo1.png',
                    description: "عروضنا لا تنتهي",
                    offerCode: 'Faisal',
                  ),
                  OfferItem(
                    imageURL: 'assets/offer5.jpeg',
                    title: 'خصومات تصل الي 10%',
                    logoURL: 'assets/logo1.png',
                    description:
                        "عروضنا لا تنتهي عروضنا لا تنتهي عروضنا لا تنتهي عروضنا لا تنتهي ",
                    offerCode: '',
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
                children: const [
                  OfferItem(
                    imageURL: 'assets/offer.jpg',
                    title: 'خصومات تصل الي 10%',
                    logoURL: 'assets/logo1.png',
                    description:
                        "عروضنا لا تنتهي عروضنا لا تنتهي عروضنا لا تنتهي عروضنا لا تنتهي ",
                    offerCode: 'Faisal',
                  ),
                  OfferItem(
                    imageURL: 'assets/offer2.jpg',
                    title: 'خصومات تصل الي 10%',
                    logoURL: 'assets/logo1.png',
                    description: "عروضنا لا تنتهي",
                    offerCode: 'Faisal',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
