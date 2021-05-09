// MOBX

import 'package:flutter_poc_state_manager/states/state_mobx.dart';

class SetState<T> extends StateMobx<T> {
  final String name = "mobx";
  SetState(t) : super(t);
}

// CUBIT BLOC
/* import 'package:flutter_poc_state_manager/states/state_cubit.dart';

class SetState<T> extends StateCubit<T> {
  final String name = "Bloc";
  SetState(t) : super(t);
} */

// Value Notifier

/* import 'package:flutter_poc_state_manager/states/state_value_notifier.dart';

class SetState<T> extends StateValueNotifier<T> {
  final String name = "ValueNotifier";
  SetState(t) : super(t);
} */
