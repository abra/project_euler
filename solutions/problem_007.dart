// 10001st prime
// https://projecteuler.net/problem=7

main(List<String> args) {
  int count = 1;
  int start = 1;
  int end = 10001;

  while (start <= end) {
    if (isPrime(++count)) {
      start++;
    }
  }

  print('$end: $count');
}

bool isPrime(int x) {
  if (x < 2) {
    return false;
  } else {
    for (int i = 2; i < x; i++) {
      if (x % i == 0) {
        return false;
      }
    }
  }
  return true;
}
