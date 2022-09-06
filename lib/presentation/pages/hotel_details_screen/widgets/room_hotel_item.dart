// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../search_result_screen/widgets/covid_19_button.dart';

class RoomHotelItem extends StatelessWidget {
//  final String id;
  final String imageURL;
  final IconData iconURL;
  final String hotelName, residenceType, evaluation, cityName;
  final double averageOfEvaluation, distance;
  final int numOFEvaluation, discount, price, priceAfterDiscount;

  const RoomHotelItem({
//    required this.id,
    required this.imageURL,
    required this.evaluation,
    required this.iconURL,
    required this.hotelName,
    required this.cityName,
    required this.residenceType,
    required this.numOFEvaluation,
    required this.averageOfEvaluation,
    required this.distance,
    required this.price,
    required this.priceAfterDiscount,
    required this.discount,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
//        Navigator.push(
//          context,
//          MaterialPageRoute(
//              builder: (context) => const HotelDetailsScreen()),
//        );
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .9,
        height: 260,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 4.0,
          margin: EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: Row(
                  children: [
                    SizedBox(
//                      height: 260,
                      width: MediaQuery.of(context).size.width * .3,
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
//                              bottomRight: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                            ),
                            child: Image.asset(
                              imageURL,
                              height: 250.0,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            right: 10,
                            child: Container(
                              color: Colors.black26,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 3.0),
                                child: Row(
                                  children: [
                                    Text('6' /*imageList.length.toString()*/,
                                        style: TextStyle(color: Colors.white)),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1.0),
                                      child: Icon(Icons.camera_alt,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 3.0),
                                    child: Text(
                                      hotelName,
                                      maxLines: 2,
//                            overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Row(children: [
                                    Icon(Icons.bed,
                                        size: 20, color: Colors.blueGrey),
                                    SizedBox(width: 4),
                                    Text('2 سرير',style: TextStyle(color: Colors.blueGrey),)
                                  ]),
                                  Row(children: [
                                    Icon(Icons.tv,
                                        size: 20, color: Colors.blueGrey),
                                    SizedBox(width: 4),
                                    Text('تلفزيون',style: TextStyle(color: Colors.blueGrey),)
                                  ]),
                                  Row(children: [
                                    Icon(Icons.window,
                                        size: 20, color: Colors.blueGrey),
                                    SizedBox(width: 4),
                                    Text('اطلالة علي المدينة',style: TextStyle(color: Colors.blueGrey),)
                                  ]),
                                  Row(children: [
                                    Icon(Icons.wifi,
                                        size: 20, color: Colors.blueGrey),
                                    SizedBox(width: 4),
                                    Text('واي فاي',style: TextStyle(color: Colors.blueGrey),)
                                  ]),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 3.0),
                                child: Text(
                                  'عرض معلومات الغرفة',
                                  maxLines: 2,
//                            overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.teal,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(color: Colors.black26),
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.white,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
