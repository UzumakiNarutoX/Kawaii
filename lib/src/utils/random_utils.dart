import 'dart:math';

final _random = Random();

T choose<T>(Iterable<T> list) => list.elementAt(_random.nextInt(list.length));

int rnd(int min, int max, {Random? rnd}) =>
    min + (rnd ?? _random).nextInt(max - min);

T? callIfNotNull<T, R>(T Function(R) foo, dynamic parameter) {
  return parameter != null ? foo(parameter) : null;
}

num byteToMB(num bytes) {
  return bytes * 0.00000095367431640625;
}
