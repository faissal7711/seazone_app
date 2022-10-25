import 'package:flutter/material.dart';

// import '../conestants.dart';

class DashboardCard extends StatelessWidget {
  final String name;
  final String imgPath;

  const DashboardCard({Key? key, required this.name, required this.imgPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(10),
      height: 120,
      width: 120,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            offset: Offset(0, 2),
            blurRadius: 1,
          ),
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            imgPath,
            width: 65,
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              "$name",
              style: TextStyle(
                // color: KTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
