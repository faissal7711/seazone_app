// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:tab_container/tab_container.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/hotel_item.dart';
import 'widgets/custom_list_tile.dart';
import 'widgets/hotel_rating.dart';
import 'widgets/hotel_widget_covid_19.dart';
import 'widgets/room_hotel_item.dart';

// import 'package:flutter_application_7/main.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class HotelDetailsScreen extends StatefulWidget {
  const HotelDetailsScreen({Key? key}) : super(key: key);

  @override
  HotelDetailsScreenState createState() => HotelDetailsScreenState();
}

class HotelDetailsScreenState extends State<HotelDetailsScreen> {
  late TabContainerController _controller = TabContainerController(
    length: 2,
  );

  List imageList = [1, 2, 3, 4, 5, 6];

  @override
  void initState() {
    _controller = TabContainerController(length: 2);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.teal,
        ),
        title: Text(
          'اسم الفندق',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.black,
            fontSize: 22,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Stack(
            children: [
              ImageSlideshow(
                width: double.infinity,
                height: 200,
                initialPage: 0,
                indicatorColor: Colors.blue.withOpacity(.0),
                indicatorBackgroundColor: Colors.grey.withOpacity(.0),
                onPageChanged: (value) {
                  debugPrint('Page changed: $value');
                },
                autoPlayInterval: 3000,
                isLoop: false,
                children: [
                  Image.asset(
                    'assets/h1_1.jpg',
                    fit: BoxFit.cover,
                    height: double.infinity,
                    width: double.infinity,
                  ),
                  Image.asset(
                    'assets/h1_2.jpg',
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Image.asset(
                    'assets/h1_3.jpg',
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Image.asset(
                    'assets/h1_4.jpg',
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Image.asset(
                    'assets/h1_5.jpg',
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Image.asset(
                    'assets/h1_6.jpg',
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                  ),
                ],
              ),
              Positioned(
                left: 10,
                top: 10,
                child: Container(
                  color: Colors.white.withOpacity(.2),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: Row(
                      children: [
                        Text(
                          imageList.length.toString(),
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(Icons.camera_alt, color: Colors.white),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 10,
                bottom: 10,
                child: Column(
                  children: [
                    Text('Hotel name', style: TextStyle(color: Colors.white)),
                    RatingBar.builder(
                      initialRating: 4,
                      minRating: 1,
                      itemSize: 18,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
//                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
//                        size: 16,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                HotelRating(isNew: true),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Divider(thickness: 1),
                ),
                HotelRating(isNew: false),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: CustomListTileForHotels(
                              name: 'name', result: 'result')),
                      Expanded(
                          child: CustomListTileForHotels(
                              name: 'name', result: 'result')),
                    ],
                  ),
                ),
                HotelWidgetCovid19(isNew: true),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    height: 120,
                    color: Colors.blueGrey.shade50,
                    child: Stack(
                      children: [
//                      Image.asset('assets/back1.jpg'),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8.0),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('احصل علي 10% كنقاط بمحفظتك',
                                      style: TextStyle(
                                          color: Colors.teal, fontSize: 20)),
                                  Text('علي الفنادق',
                                      style: TextStyle(
                                          color: Colors.teal, fontSize: 15)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text('الكود:',
                                          style: TextStyle(
                                              color: Colors.teal,
                                              fontSize: 15)),
                                      Text('SUMMER',
                                          style: TextStyle(
                                              color: Colors.teal,
                                              fontSize: 15)),
                                      Expanded(child: SizedBox()),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Text('تطبيق الشروط واﻷحكام',
                                            style: TextStyle(
                                                color: Colors.teal,
                                                fontSize: 15)),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                              Column(
                                children: [
//                          Image.asset(''),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.arrow_forward_ios),
                                  ),
                                  Container(
                                    color: Colors.red,
                                    child: Center(
                                        child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('اعرف المزيد',
                                          style:
                                              TextStyle(color: Colors.white)),
                                    )),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .9,
            child: TabContainer(
              controller: _controller,
              radius: 0,
              color: Colors.white,
              tabDuration: const Duration(seconds: 0),
              children: _getChildren2(),
              tabs: _getTabs2(),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _getChildren2() {
    return <Widget>[
      Column(
        children: [
          Container(
            height: 5,
            color: Colors.white,
            /*child: Image.asset('assets/car1.jpg')*/
            child: Row(
              children: [
                Expanded(
                    child: Divider(
                  color: Colors.white,
                  thickness: 2,
                )),
                Expanded(
                    child: Divider(
                  color: Colors.teal,
                  thickness: 2,
                )),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('جاري تحميل بيانات الفندق'),
                  SizedBox(height: 10),
                  CircularProgressIndicator(
                    color: Colors.teal,
                    backgroundColor: Colors.deepOrange,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      Column(
        children: [
          Container(
            height: 5,
            color: Colors.white,
            /*child: Image.asset('assets/car1.jpg')*/
            child: Row(
              children: [
                Expanded(
                    child: Divider(
                  color: Colors.teal,
                  thickness: 2,
                )),
                Expanded(
                    child: Divider(
                  color: Colors.white,
                  thickness: 2,
                )),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                RoomHotelItem(
                  imageURL: 'assets/img_main.jpeg',
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
                RoomHotelItem(
                  imageURL: 'assets/img_main.jpeg',
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
                RoomHotelItem(
                  imageURL: 'assets/img_main.jpeg',
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
                RoomHotelItem(
                  imageURL: 'assets/img_main.jpeg',
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
              ],
            ),
          ),
        ],
      ),
    ];
  }

  List<String> _getTabs2() {
    return <String>[
      'معلومات الفندق',
      'اختر غرفتك',
    ];
  }
}

/*
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tab_container/tab_container.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/hotel_item.dart';

// import 'package:flutter_application_7/main.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class HotelDetailsScreen extends StatefulWidget {
  const HotelDetailsScreen({Key? key}) : super(key: key);

  @override
  HotelDetailsScreenState createState() => HotelDetailsScreenState();
}

class HotelDetailsScreenState extends State<HotelDetailsScreen> {
  late TabContainerController _controller = TabContainerController(
    length: 2,
  );

  @override
  void initState() {
    _controller = TabContainerController(length: 2);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,leading: BackButton(
        onPressed: () {
          Navigator.pop(context);
        },
        color: Colors.teal,
      ),title: Text('اسم الفندق',
          style: TextStyle(
            fontWeight: FontWeight.w700,color: Colors.black,
            fontSize: 22,
          )),elevation: 0,backgroundColor: Colors.white,),
//      backgroundColor: Colors.deepOrange,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: Row(
//                  children: [
//                    BackButton(
//                      onPressed: () {
//                        Navigator.pop(context);
//                      },
//                      color: Colors.teal,
//                    ),
//                    Expanded(
//                      child: Center(
//                        child: Text('اسم الفندق',
//                            style: TextStyle(
//                              fontWeight: FontWeight.w700,
//                              fontSize: 22,
//                            )),
//                      ),
//                    ),
//                  ],
//                ),
//              ),
              Expanded(
                child: ListView(
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        height: 220.0,
                        aspectRatio: 16 / 9,
                        viewportFraction: 1.0,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
//                  onPageChanged: callbackFunction,
                        scrollDirection: Axis.horizontal,
                      ),
//                      items: [
//                        Image.asset('assets/img_main.jpeg',fit: BoxFit.fill,),
//                        Image.asset('assets/img_main.jpeg',fit: BoxFit.fill,),
//                        Image.asset('assets/img_main.jpeg',fit: BoxFit.fill,),
//                        Image.asset('assets/img_main.jpeg',fit: BoxFit.fill,),
//                      ],
                      items: [1, 2, 3, 4, 5].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                decoration: BoxDecoration(color: Colors.amber),
                                child: Center(
                                  child: Text(
                                    'text $i',
                                    style: TextStyle(fontSize: 16.0),
                                  ),
                                ));
                          },
                        );
                      }).toList(),
                    ),
                    RoomHotelItem(
                      imageURL: 'assets/img_main.jpeg',
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
                    RoomHotelItem(
                      imageURL: 'assets/img_main.jpeg',
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
                    Spacer(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .9,
                      child: TabContainer(
                        controller: _controller,
                        radius: 0,
                        color: Colors.teal,
                        tabDuration: const Duration(seconds: 0),
                        children: _getChildren2(),
                        tabs: _getTabs2(),
                      ),
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

  List<Widget> _getChildren2() {
    return <Widget>[
      Container(color: Colors.teal,/*child: Image.asset('assets/car1.jpg')*/),
      ListView(
        children: [
          RoomHotelItem(
            imageURL: 'assets/img_main.jpeg',
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
          RoomHotelItem(
            imageURL: 'assets/img_main.jpeg',
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
          RoomHotelItem(
            imageURL: 'assets/img_main.jpeg',
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
          RoomHotelItem(
            imageURL: 'assets/img_main.jpeg',
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
        ],
      ),
//      Image.asset('assets/car3.jpg'),
    ];
  }

  List<String> _getTabs2() {
    return <String>[
      'Image 1',
      'Image 2',
    ];
  }
}

 */
