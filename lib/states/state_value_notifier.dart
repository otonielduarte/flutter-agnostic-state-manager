// State With Value Notifier

import 'package:flutter/foundation.dart';

abstract class StateValueNotifier<T> extends ValueNotifier<T> {
  StateValueNotifier(T t) : super(t);

  set state(T t) {
    value = t;
  }

  T get state => value;

  void close() {}
}
