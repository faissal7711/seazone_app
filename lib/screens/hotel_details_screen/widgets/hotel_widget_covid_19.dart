// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';

class HotelWidgetCovid19 extends StatelessWidget {
  final bool isNew;

//  final String imageURL;
//  final IconData iconURL;
//  final String hotelName, residenceType, evaluation, cityName;
//  final double averageOfEvaluation, distance;
//  final int numOFEvaluation, discount, price, priceAfterDiscount;

  const HotelWidgetCovid19({
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
        padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 8.0),
        child: Container(
          color: Colors.teal.shade50,
//          width: MediaQuery.of(context).size.width * .9,
//        height: 260,
          child: Row(
            children: [
              Icon(Icons.featured_play_list,color: Colors.white,size: 35,),
//              SizedBox(width: 8,),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8.0,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'bla bla bla bla bla bla bla faissal bla vela van dam veena olyany',
                        style: TextStyle(color: Colors.teal,),
                        maxLines: 2,
//                overflow: TextOverflow.clip,
                      ),
                      Text('إعرف المزيد',style: TextStyle(color: Colors.teal,fontSize: 20)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
