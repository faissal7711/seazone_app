// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class OfferItem extends StatelessWidget {
//  final String id;
  final String imageURL, logoURL;
  final String title, description, offerCode;

  const OfferItem({
//    required this.id,
    required this.imageURL,
    required this.offerCode,
    required this.logoURL,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        elevation: 4.0,
        margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
              child: Container(
                height: 130.0,
                width: MediaQuery.of(context).size.width * .9,
                child: Stack(
                  children: [
                    Image.asset(
                      imageURL,
//                      height: 180.0,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      right: 10,
                      top: 20,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3.0),
                        child: Text(
                          'الكود : $offerCode',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 10,
                      bottom: 20,
                      child: Container(
                        height: 30,
                        width: 80,
                        child: Image.asset(
                          logoURL,
//                      height: 180.0,
//                        width: double.infinity,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3.0),
              child: Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: SizedBox(
                height: 44,
                child: Text(
                  description,
                  maxLines: 2,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
