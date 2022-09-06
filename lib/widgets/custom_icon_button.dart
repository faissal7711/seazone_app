// ignore_for_file: missing_return

import 'package:flutter/material.dart';

import '../screens/search_result_screen.dart';

class CustomIconButton extends StatelessWidget {
  final String name;
  final IconData? icon;
  final Color backgroundColor;
  final Color componentColor;
  final Function onPressed;

  const CustomIconButton({
    required this.name,
    required this.icon,
    required this.backgroundColor,
    required this.componentColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: InkWell(
          onTap: (){

            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const SearchResultScreen()),
            );
          },
          child: Container(
              height: 50.0,
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(60.0),
                border: Border.all(color: componentColor),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon,color: componentColor),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(name,style: TextStyle(fontSize: 17,color: componentColor,)),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
