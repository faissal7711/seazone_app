import 'package:flutter/material.dart';
import 'package:seazone/screens/flight1_screen.dart';
import 'package:seazone/widgets/custom_list_2.dart';
import 'package:seazone/widgets/custom_list_tile.dart';

class chang_airport extends StatefulWidget {
  @override
  State<chang_airport> createState() => _chang_airportState();
}

class _chang_airportState extends State<chang_airport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text("ابحث عن واجهة الانطلاق",
          style: TextStyle(
            //fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Colors.black
            )
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.teal,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const flight1SearchScreen()),
              );
            },
          ),
        ),
        body: Column(
          children: [
            SizedBox(
            height: 10,
          ),
            Container(
              padding: EdgeInsetsDirectional.only(start: 20 , end: 20 , top: 20),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'المغادرة من',
                  fillColor: Colors.black38,
                  prefixIcon: Icon(Icons.search),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Color.fromARGB(255, 5, 167, 151)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(100),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: const CustomListTile(
                        name: 'استخدام الموقع الحالي',
                        icon: Icons.location_searching,
                        result: "مطار القاهره الدولى",
                      ),
            ),
           Column(
             children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                  width: double.infinity,
                   child: const Text("وجهة الانطلاق",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                    //fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Colors.black
            )
                    ),
                 ),
               ),
             ],
           ),
          ],
        ),backgroundColor: Colors.white,
        
        );
  }
}
