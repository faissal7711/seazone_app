// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// import '../conestants.dart';
import '../services/theme.dart';

class CustomListT_2 extends StatelessWidget {
  final String name;
  final String result;
  final IconData icon;

  const CustomListT_2({
    required this.name,
    required this.icon,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text(name),
        subtitle: Text(result),
//                    trailing: Icon(Icons.more_vert),
      ),
    );
  }
  
}
