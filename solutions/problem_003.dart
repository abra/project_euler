// Largest prime factor
// https://projecteuler.net/problem=3

main(List<String> args) {
  num number = 600851475143;

  print(factor(number));
}

num factor(num n) {
  num i = 2;
  var res = <int>[];

  while (i <= n) {
    if (n % i == 0) {
      res.add(i);
      n /= i;
      i = 2;
    }
    i++;
  }

  return res.last;
}

