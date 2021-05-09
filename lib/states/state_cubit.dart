import 'package:flutter_bloc/flutter_bloc.dart';

abstract class StateCubit<T> extends Cubit<T> {
  StateCubit(T initialState) : super(initialState);

  set state(T t) {
    emit(t);
  }
}
