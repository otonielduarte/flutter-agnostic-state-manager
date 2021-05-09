import 'package:mobx/mobx.dart';

/// MOBX
abstract class StateMobx<T> with Store {
  Observable<T> _observable;

  StateMobx(T t) : _observable = Observable(t);

  set state(T t) {
    Action(() => _observable.value = t)();
  }

  T get state => _observable.value;

  Observable<T> get stream => _observable;

  void close() {}
}
