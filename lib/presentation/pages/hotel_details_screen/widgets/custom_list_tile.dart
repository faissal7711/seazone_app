// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomListTileForHotels extends StatelessWidget {
  final String name;
  final String result;
  final IconData? icon;

  const CustomListTileForHotels({
    required this.name,
    this.icon,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        child: ListTile(
//        leading: icon!=null?Icon(icon):Container(),
          title: Text(name),
          subtitle: Text(result),
//                    trailing: Icon(Icons.more_vert),
        ),
      ),
    );
  }
}
