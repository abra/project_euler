// Summation of primes
// https://projecteuler.net/problem=10

bool isPrime(int n, List<int> primes) {
  if (n <= 1) {
    return false;
  }

  for (int prime in primes) {
    if (prime * prime > n) {
      break;
    }

    if (n % prime == 0) {
      return false;
    }
  }

  return true;
}

void main() {
  int limit = 2000000;
  int sum = 0;
  List<int> primes = [];

  for (int i = 2; i < limit; i++) {
    if (isPrime(i, primes)) {
      primes.add(i);
      sum += i;
    }
  }

  print("The sum of all primes below $limit is $sum");
}
