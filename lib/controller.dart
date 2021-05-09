import 'package:flutter_poc_state_manager/states/set_state.dart';

class Controller {
  SetState<bool> loading = SetState(false);

  SetState<int> counter = SetState(0);

  void incrementCounter() {
    counter.state = counter.state + 1;
  }
}
