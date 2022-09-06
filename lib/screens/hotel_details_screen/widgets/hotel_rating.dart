// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';

class HotelRating extends StatelessWidget {
  final bool isNew;
//  final String imageURL;
//  final IconData iconURL;
//  final String hotelName, residenceType, evaluation, cityName;
//  final double averageOfEvaluation, distance;
//  final int numOFEvaluation, discount, price, priceAfterDiscount;

  const HotelRating({
    required this.isNew,
//    required this.imageURL,
//    required this.evaluation,
//    required this.iconURL,
//    required this.hotelName,
//    required this.cityName,
//    required this.residenceType,
//    required this.numOFEvaluation,
//    required this.averageOfEvaluation,
//    required this.distance,
//    required this.price,
//    required this.priceAfterDiscount,
//    required this.discount,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('Clicked');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width * .9,
//        height: 260,
          child: Column(
            children: [
              isNew?Row(
                children: [
                  Expanded(flex: 8,child: SizedBox()),
                  Container(
                    color: Colors.amber,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3.0),
                      child: Text('جديد',style: TextStyle(fontSize: 13)),
                    ),
                  ),
                  Expanded(flex: 1,child: SizedBox()),
                ],
              ):Container(),
              Row(
                children: [
                  SizedBox(
                    height: 35,
                    width: 50,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(5.0),
                            bottomRight: Radius.circular(5.0),
                          ),
                          child: Container(
                            color: Colors.teal,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('6.8',style: TextStyle(color: Colors.white)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('جيد',style: TextStyle(fontSize: 13,color: Colors.teal),),
                        Text('بناء علي تقييمات حصرية',style: TextStyle(fontSize: 13,color: Colors.black45),),
                      ],
                    ),
                  ),
                  Expanded(child: SizedBox()),

                  Container(
                    color: Colors.teal.shade900,
                    child:
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Row(
                        children: [
                          Text('تقييمات',style: TextStyle(fontSize: 12,color: Colors.white,)),
                          Text('Seazone',style: TextStyle(color: Colors.teal,)),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Icon(Icons.arrow_forward_ios,color: Colors.teal,size: 18,),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
