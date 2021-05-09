import 'package:flutter_poc_state_manager/states/state_builder_args.dart';

/*
 * ****Mobx
 */
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_poc_state_manager/states/set_state.dart';

class ObserverState<T> extends Observer {
  ObserverState({SetStateBuilderArgs<T> builder, SetState<T> setState})
      : super(
            builder: (BuildContext context) =>
                builder(context, setState.state));
}

/*
*****Cubit
 */

/* import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_poc_state_manager/states/state_cubit.dart';

class ObserverState<T> extends BlocBuilder<StateCubit<T>, T> {
  const ObserverState({
    SetStateBuilderArgs<T> builder,
    StateCubit<T> setState,
  }) : super(
          bloc: setState,
          buildWhen: null,
          builder: builder,
        );
} */

/*
 **** Value Listenable
 *  */
/* import 'package:flutter/widgets.dart';
import 'package:flutter_poc_state_manager/states/state_value_notifier.dart';

class ObserverState<T> extends ValueListenableBuilder<T> {
  ObserverState({
    SetStateBuilderArgs<T> builder,
    StateValueNotifier<T> setState,
  }) : super(
          valueListenable: setState,
          builder: (BuildContext context, T value, _) =>
              builder(context, value),
        );
} */
