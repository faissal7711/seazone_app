import 'package:flutter/material.dart';
import 'package:seazone/screens/flight1_screen.dart';
import 'package:seazone/screens/flight2_screen.dart';
import 'package:seazone/screens/home_screen.dart';
import 'package:seazone/screens/hotels_search_screen.dart';
import 'package:seazone/services/theme.dart';

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            'ابحث عن رحلات  ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.teal,
            ),
          ),
          bottom: const TabBar(
            labelColor: Colors.black,
            labelStyle: TextStyle(color: Colors.black),
            indicatorColor: Colors.teal,
            tabs: <Widget>[
              Tab(
                text: "ذهاب فقط",
              ),
              Tab(
                text: "ذهاب وعوده",
              ),
              Tab(
                text: "مدن متعددة",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            flight1SearchScreen(),
            flight2SearchScreen(),
            Center(
              child: Text("It's sunny here"),
            ),
          ],
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
