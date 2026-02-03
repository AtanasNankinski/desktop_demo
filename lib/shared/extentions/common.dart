import 'package:flutter/material.dart';

extension MediaQueryExtention on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
}

extension IterableExtensions<T> on Iterable<T> {
  Iterable<T> divideWith(T separator) sync* {
    if (isEmpty) return;
    final iterator = this.iterator..moveNext();
    yield iterator.current;
    while (iterator.moveNext()) {
      yield separator;
      yield iterator.current;
    }
  }
}