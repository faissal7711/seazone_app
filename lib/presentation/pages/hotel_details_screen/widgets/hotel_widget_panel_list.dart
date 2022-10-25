// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';

class HotelWidgetPanelList extends StatefulWidget {
  final bool isNew;

//  final String imageURL;
//  final IconData iconURL;
//  final String hotelName, residenceType, evaluation, cityName;
//  final double averageOfEvaluation, distance;
//  final int numOFEvaluation, discount, price, priceAfterPanelList;

  HotelWidgetPanelList({
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
//    required this.priceAfterPanelList,
//    required this.discount,
  });

  @override
  State<HotelWidgetPanelList> createState() => _HotelWidgetPanelListState();
}

class _HotelWidgetPanelListState extends State<HotelWidgetPanelList> {
  List<Map<String, dynamic>> _items = List.generate(
    2,
    (index) => {
      'id': index,
      'title': 'Item $index',
      'description':
          'This is the description of the item $index. Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      'isExpanded': false
    },
  );
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return buildPanel();
  }

  Widget buildPanel() {
    return ExpansionPanelList(
      elevation: 3,
      expansionCallback: (index, isExpanded) {
        setState(() {
          _items[index]['isExpanded'] = !isExpanded;
        });
      },
      animationDuration: Duration(milliseconds: 600),
      children: _items
          .map(
            (item) => ExpansionPanel(
              canTapOnHeader: true,
              backgroundColor:
                  item['isExpanded'] == true ? Colors.cyan[100] : Colors.white,
              headerBuilder: (_, isExpanded) => Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  child: Text(
                    item['title'],
                    style: TextStyle(fontSize: 20),
                  )),
              body: Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: Text(item['description']),
              ),
              isExpanded: item['isExpanded'],
            ),
          )
          .toList(),
    );
  }
}
