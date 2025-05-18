import 'product_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitState());

  int price = 100;

  void increment() {
    emit(CounterUpdateState(state.count + 1));
    if (state.count > 0) {
      price = 100 * state.count;
    }
  }

  void decrement() {
    emit(CounterUpdateState(state.count - 1));
    if (state.count < 0) {
      price = 0;
    } else {
      price = 100 * state.count;
    }
  }
}
