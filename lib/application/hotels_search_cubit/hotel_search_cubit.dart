import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'hotel_search_states.dart';

class NewsCubit extends Cubit<NewsStates> {
  NewsCubit() : super(NewsInitialState());
  // int counter = 1;

  static NewsCubit get(context) => BlocProvider.of(context);

  // void minus(){
  //   counter--;
  //   emit(CounterMinusState(counter));
  // }
  //
  // void plus(){
  //   counter++;
  //   emit(CounterPlusState(counter));
  // }

}
