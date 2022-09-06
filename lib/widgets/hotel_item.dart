// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../screens/hotel_details_screen/hotel_details_screen.dart';
import 'covid_19_button.dart';
import 'custom_icon_button.dart';

class HotelItem extends StatelessWidget {
//  final String id;
  final String imageURL;
  final IconData iconURL;
  final String hotelName, residenceType, evaluation, cityName;
  final double averageOfEvaluation, distance;
  final int numOFEvaluation, discount, price, priceAfterDiscount;

  const HotelItem({
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
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const HotelDetailsScreen()),
        );
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
          child: Row(
            children: [
              SizedBox(
                height: 260,
                width: MediaQuery.of(context).size.width * .3,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  ),
                  child: Image.asset(
                    imageURL,
//                      height: 180.0,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 3.0),
                              child: Text(
                                hotelName,
                                maxLines: 2,
//                            overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            itemSize: 18,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
//                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            color: Colors.green.shade300,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                '$averageOfEvaluation',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            ' $evaluation',
                            style: TextStyle(
                              color: Colors.green.shade300,
                            ),
                          ),
                          Text(
                            ' $numOFEvaluation',
                            style: TextStyle(
                              color: Colors.blueGrey.shade300,
                            ),
                          ),
                          Text(
                            ' تقييمات',
                            style: TextStyle(
                              color: Colors.blueGrey.shade300,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '$distance كم من مركز مدينة $cityName',
                            style: TextStyle(
                              color: Colors.blueGrey.shade300,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.blueGrey.shade100,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Row(
                            children: [
                              Icon(iconURL),
                              Text(
                                residenceType,
                                maxLines: 2,
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Covid_19_Button(
                          name: 'إجراءات الوقاية من فيروس (COVID-19)',
//                    icon: null,
                          backgroundColor: Colors.teal.shade100,
                          componentColor: Colors.teal,
                          onPressed: () {},
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            color: Colors.red.shade100,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: discount == 0 ? 0.0 : 8.0),
                              child: Text(
                                discount == 0 ? '' : ('وفر $discount%'),
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                          discount != 0
                              ? Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      ('EGP ' + price.toString()),
                                      style: TextStyle(
                                          color: Colors.blueGrey.shade300,
                                          decoration:
                                              TextDecoration.lineThrough),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      ('EGP ' + priceAfterDiscount.toString()),
                                      style: TextStyle(
                                        color: Colors.red,
                                      ),
                                    ),
                                  ],
                                )
                              : Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      ('EGP ' + price.toString()),
                                      style: TextStyle(
                                        color: Colors.teal,
                                      ),
                                    ),
                                  ],
                                ),
                          Text('المتوسط لليلة واحدة شاملة الضريبة',
                              style: TextStyle(
                                color: Colors.blueGrey.shade300,
                              )),
                        ],
                      ),
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
