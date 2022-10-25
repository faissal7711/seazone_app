// ignore_for_file: unused_local_variable, prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seazone/application/home_cubit/home_cubit.dart';
import 'package:seazone/presentation/pages/home_screen/widgets/home_item_1.dart';
import '../../../application/home_cubit/home_states.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/student_screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).canvasColor;
    return BlocProvider(
      create: (BuildContext context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, stats) {},
        builder: (context, stats) {
          var cubit = HomeCubit.get(context);
          return Scaffold(
//      backgroundColor: purpleColor,
            body: SizedBox.expand(
              child: PageView(
                controller: cubit.pageController,
                onPageChanged: (index) {
                  cubit.changeBottomNavState(index);
                },
                children: <Widget>[
                  HomeItem1(),
                  Container(
                    color: Colors.red,
                  ),
                  Container(
                    color: Colors.green,
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            bottomNavigationBar: BottomNavyBar(
              selectedIndex: cubit.currentIndex,
              showElevation: true,
              itemCornerRadius: 24,
              curve: Curves.easeIn,
              onItemSelected: (index) {
                cubit.changeBottomNavState(index);
                cubit.pageController.jumpToPage(index);
              },
              items: cubit.bottomItems,
            ),
          );
        },
      ),
    );
  }
}
