// Highly divisible triangular number
// https://projecteuler.net/problem=12

import 'dart:math';

main(List<String> args) {
  int count = 1;
  int triangleNumber = 0;

  while (true) {
    triangleNumber = (count * count + count * 1) ~/ 2;
    if (listFactorsOf(triangleNumber).length > 500) break;
    count++;
  }

  print(triangleNumber);
}

List<int> listFactorsOf(int n) {
  int i = 1;
  var res = <int>[];

  while (i <= sqrt(n).toInt()) {
    if (n % i == 0) {
      res.add(i);
      res.add(n ~/ i);
    }
    i++;
  }

  return res;
}
