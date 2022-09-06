// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_text_field.dart';
import '../widgets/hotel_item.dart';

// import 'package:flutter_application_7/main.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchResultScreen extends StatefulWidget {
  const SearchResultScreen({Key? key}) : super(key: key);

  @override
  _SearchResultScreenState createState() => _SearchResultScreenState();
}

class _SearchResultScreenState extends State<SearchResultScreen> {
  @override
  void initState() {
    // Timer(const Duration(seconds: 2),()=>Navigator.push(context, CupertinoPageRoute(builder: (_)=>const MyHomePage())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Colors.deepOrange,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  BackButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    color: Colors.teal,
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        'بحث عن فنادق',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              CustomTextField(
                  hint: 'بحث عن فنادق',
                  icon: Icons.search,
                  errVal: '',
                  onClick: () {}),
              Expanded(
                child: ListView(
                  children: [
                    HotelItem(
                      imageURL: 'assets/h1_1.jpg',
                      evaluation: 'ممتاز',
                      iconURL: Icons.description,
                      hotelName: ' Arabella Residence',
                      residenceType: 'قضاء شهر العسل',
                      numOFEvaluation: 1991,
                      averageOfEvaluation: 8.0,
                      distance: .84,
                      price: 3700,
                      priceAfterDiscount: 3000,
                      discount: 7,
                      cityName: 'القاهرة',
                    ),
                    HotelItem(
                      imageURL: 'assets/h1_2.jpg',
                      evaluation: 'ممتاز',
                      iconURL: Icons.description,
                      hotelName: 'Tahrir Plaza Suites - Museum View',
                      residenceType: 'إقامة فاخرة',
                      numOFEvaluation: 1991,
                      averageOfEvaluation: 8.0,
                      distance: .84,
                      price: 2000,
                      priceAfterDiscount: 1788,
                      discount: 0,
                      cityName: 'القاهرة',
                    ),
                    HotelItem(
                      imageURL: 'assets/h1_3.jpg',
                      evaluation: 'جيد جدا',
                      iconURL: Icons.description,
                      hotelName: 'Atlas International Hotels',
                      residenceType: 'ﻹكتشاف اشهر المعالم',
                      numOFEvaluation: 1991,
                      averageOfEvaluation: 8.0,
                      distance: .84,
                      price: 4333,
                      priceAfterDiscount: 2500,
                      discount: 14,
                      cityName: 'القاهرة',
                    ),
                    HotelItem(
                      imageURL: 'assets/h1_4.jpg',
                      evaluation: 'جيد جدا',
                      iconURL: Icons.description,
                      hotelName: 'Atlas International Hotels',
                      residenceType: 'ﻹكتشاف اشهر المعالم',
                      numOFEvaluation: 1991,
                      averageOfEvaluation: 8.0,
                      distance: .84,
                      price: 4333,
                      priceAfterDiscount: 2500,
                      discount: 14,
                      cityName: 'القاهرة',
                    ),
                    HotelItem(
                      imageURL: 'assets/h1_5.jpg',
                      evaluation: 'جيد جدا',
                      iconURL: Icons.description,
                      hotelName: 'Atlas International Hotels',
                      residenceType: 'ﻹكتشاف اشهر المعالم',
                      numOFEvaluation: 1991,
                      averageOfEvaluation: 8.0,
                      distance: .84,
                      price: 4333,
                      priceAfterDiscount: 2500,
                      discount: 14,
                      cityName: 'القاهرة',
                    ),
                    HotelItem(
                      imageURL: 'assets/h1_6.jpg',
                      evaluation: 'جيد جدا',
                      iconURL: Icons.description,
                      hotelName: 'Atlas International Hotels',
                      residenceType: 'ﻹكتشاف اشهر المعالم',
                      numOFEvaluation: 1991,
                      averageOfEvaluation: 8.0,
                      distance: .84,
                      price: 4333,
                      priceAfterDiscount: 2500,
                      discount: 14,
                      cityName: 'القاهرة',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
