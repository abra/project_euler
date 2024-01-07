// Largest prime factor
// https://projecteuler.net/problem=3

main(List<String> args) {
  int number = 600851475143;

  print(factor(number));
}

int factor(int n) {
  int i = 2;
  var res = <int>[];

  while (i <= n) {
    if (n % i == 0) {
      res.add(i);
      n = n ~/ i;
      i = 2;
    }
    i++;
  }

  return res.last;
}
