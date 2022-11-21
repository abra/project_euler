// Special Pythagorean triplet
// https://projecteuler.net/problem=9

main(List<String> args) {
  int a = 0, b = 0, c = 0;
  int sum = 1000;
  bool isFound = false;

  for (a = 1; a < sum / 3; a++) {
    for (b = a; b < sum / 2; b++) {
      c = sum - a - b;

      if (a * a + b * b == c * c) {
        isFound = true;
        break;
      }
    }

    if (isFound) break;
  }

  print('${a * b * c}');
}
