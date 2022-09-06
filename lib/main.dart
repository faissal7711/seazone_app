import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:seazone/screens/chang_airport.dart';
import 'package:seazone/screens/flight1_screen.dart';
import 'package:seazone/screens/tapbar.dart';
import 'package:seazone/screens/test.dart';

import 'screens/home_screen.dart';
import 'package:seazone/screens/hotel_details_screen/hotel_details_screen.dart';
import 'screens/search_result_screen.dart';
import 'screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("ar", "EG"),
      ],
      locale: const Locale("ar", "EG"),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
//      home:  const HotelDetailsScreen(),
      home: const SplashScreen(),
      // home: const HomeScreen(),
    );
  }
}
