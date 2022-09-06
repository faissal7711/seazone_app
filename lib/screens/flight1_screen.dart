import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seazone/screens/chang_airport.dart';
import 'package:seazone/widgets/custom_list_2.dart';
import '../widgets/custom_icon_button.dart';
import '../widgets/custom_list_tile.dart';

// import 'package:flutter_application_7/main.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class flight1SearchScreen extends StatefulWidget {
  const flight1SearchScreen({Key? key}) : super(key: key);

  @override
  State<flight1SearchScreen> createState() => _flight1SearchScreenState();
}

class _flight1SearchScreenState extends State<flight1SearchScreen> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /* Row(
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
              ),*/
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CustomListT_2(
                      name: 'من',
                      icon: Icons.location_searching,
                      result: "مطار القاهره الدولى",
                    ),
                    CustomListT_2(
                      name: 'الى',
                      icon: Icons.location_searching_outlined,
                      result: "مطار شرم الشيخ الدولى",
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
                      name: 'المسافرون ونوع الدرجة',
                      icon: Icons.person_add,
                      result: "1غرفه,2بالغون,1طفل",
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    this.value = !value;
                  });
                },
                child: Row(
                  children: <Widget>[
                    /** Checkbox Widget **/
                    Checkbox(
                      value: this.value,
                      activeColor: value ? Colors.teal : Colors.black,
                      onChanged: (value) {
                        setState(() {
                          this.value = value!;
                        });
                      },
                    ),
                    Text(
                      'ابحث عن الرحلات المباشره فقط',
                      style: TextStyle(
                          color: value ? Colors.teal : Colors.black,
                          fontSize: 17.0),
                    ), //Text //Checkbox
                  ], //<Widget>[]
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomIconButton(
                name: 'ابحث عن طيران الان',
                icon: Icons.search,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => chang_airport()),
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
