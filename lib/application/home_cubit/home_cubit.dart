import 'package:bloc/bloc.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());
  int currentIndex = 0;
  PageController pageController = PageController();

  List<BottomNavyBarItem> bottomItems = [
    BottomNavyBarItem(
      icon: Icon(Icons.apps),
      title: Text('Home'),
      activeColor: Colors.red,
      textAlign: TextAlign.center,
    ),
    BottomNavyBarItem(
      icon: Icon(Icons.people),
      title: Text('Users'),
      activeColor: Colors.purpleAccent,
      textAlign: TextAlign.center,
    ),
    BottomNavyBarItem(
      icon: Icon(Icons.message),
      title: Text(
        'Messages test for mes teset test test ',
      ),
      activeColor: Colors.pink,
      textAlign: TextAlign.center,
    ),
    BottomNavyBarItem(
      icon: Icon(Icons.settings),
      title: Text('Settings'),
      activeColor: Colors.blue,
      textAlign: TextAlign.center,
    ),
  ];

  static HomeCubit get(context) => BlocProvider.of(context);

  void changeBottomNavState(int index) {
    currentIndex = index;
    emit(HomeBottomNavState());
  }
}
