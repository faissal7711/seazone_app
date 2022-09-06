import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home_screen.dart';

// import 'package:flutter_application_7/main.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 2),
      () => Navigator.push(
        context,
        CupertinoPageRoute(
          builder: (_) => const HomeScreen(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Stack(
        children: [
          Center(
              child: Container(
            child: Image.asset('assets/splash.png', fit: BoxFit.cover),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          )),
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .6,
              ),
              const Center(
                child: CircularProgressIndicator(
                  color: Colors.teal,backgroundColor: Colors.deepOrange,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
