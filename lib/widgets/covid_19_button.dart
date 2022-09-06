// ignore_for_file: missing_return, camel_case_types

import 'package:flutter/material.dart';

class Covid_19_Button extends StatelessWidget {
  final String name;
//  final IconData? icon;
  final Color backgroundColor;
  final Color componentColor;
  final Function onPressed;

  const Covid_19_Button({
    required this.name,
//    required this.icon,
    required this.backgroundColor,
    required this.componentColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: 30.0,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(4.0),
            border: Border.all(color: componentColor),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
//              Icon(icon,color: componentColor),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(name,style: TextStyle(fontSize: 11,color: componentColor,)),
              ),
            ],
          )),
    );
  }
}
