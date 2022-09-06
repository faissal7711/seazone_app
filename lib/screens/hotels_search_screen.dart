// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_icon_button.dart';
import '../widgets/custom_list_tile.dart';
import 'home_screen.dart';
import 'search_result_screen.dart';

// import 'package:flutter_application_7/main.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class HotelsSearchScreen extends StatelessWidget {
  const HotelsSearchScreen({Key? key}) : super(key: key);

//  @override
//  void initState() {
//     Timer(const Duration(seconds: 2),()=>Navigator.push(context, CupertinoPageRoute(builder: (_)=>const HomeScreen())));
//    super.initState();
//  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  BackButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    color: Colors.teal,
                  ),
                  Expanded(
                    child: Center(
                      child: Text('بحث عن فنادق',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 22,
                          )),
                    ),
                  ),
                ],
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('اكثر من مليون فندق بين يديك'),
              ),
              CustomIconButton(
                name: 'البحث عن فنادق بالقرب منك',
                icon: Icons.location_searching,
                onPressed: () {},
                componentColor: Colors.teal,
                backgroundColor: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CustomListTile(
                      name: 'الوجهة',
                      icon: Icons.location_on,
                      result: "القاهرة",
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomListTile(
                            name: 'تاريخ الوصول',
                            icon: Icons.arrow_forward,
                            result: "04يولو2022",
                          ),
                        ),
                        Expanded(
                          child: CustomListTile(
                            name: 'تاريخ المغادرة',
                            icon: Icons.arrow_back,
                            result: "05يولو2022",
                          ),
                        ),
                      ],
                    ),
                    CustomListTile(
                      name: 'النزلاء',
                      icon: Icons.person_add,
                      result: "1غرفه,2بالغون,1طفل",
                    ),
                  ],
                ),
              ),
              CustomIconButton(
                name: 'ابحث عن فنادق الان',
                icon: Icons.search,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SearchResultScreen()),
                  );
                },
                componentColor: Colors.white,
                backgroundColor: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
