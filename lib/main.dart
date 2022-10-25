import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'presentation/pages/hotel_details_screen/hotel_details_screen.dart';
import 'presentation/pages/splash_screen/splash_screen.dart';
import 'presentation/pages/test_screen.dart';

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
     // home:  TestScreen(),
      home: const SplashScreen(),
      // home: const HomeScreen(),
    );
  }
}
