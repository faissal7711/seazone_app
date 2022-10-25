// import 'dart:async';
// // import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import 'hotel_details_screen/widgets/hotel_widget_panel_list.dart';
// // import '../home_screen/home_screen.dart';
//
// class TestScreen extends StatefulWidget {
//   const TestScreen({Key? key}) : super(key: key);
//
//   @override
//   _TestScreenState createState() => _TestScreenState();
// }
//
// class _TestScreenState extends State<TestScreen> {
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.teal,
//       body: Stack(
//         children: [
//           Center(
//               child: Container(
//             child: Image.asset('assets/splash.png', fit: BoxFit.cover),
//             height: MediaQuery.of(context).size.height,
//             width: MediaQuery.of(context).size.width,
//           )),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // SizedBox(
//               //   height: MediaQuery.of(context).size.height * .6,
//               // ),
//               HotelWidgetPanelList(isNew: true),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Nav Bar")),
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            Container(color: Colors.blueGrey,),
            Container(color: Colors.red,),
            Container(color: Colors.green,),
            Container(color: Colors.blue,),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              title: Text('Item One'),
              icon: Icon(Icons.home)
          ),
          BottomNavyBarItem(
              title: Text('Item Two'),
              icon: Icon(Icons.apps)
          ),
          BottomNavyBarItem(
              title: Text('Item Three'),
              icon: Icon(Icons.chat_bubble)
          ),
          BottomNavyBarItem(
              title: Text('Item Four'),
              icon: Icon(Icons.settings)
          ),
        ],
      ),
    );
  }
}