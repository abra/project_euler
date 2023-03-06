// Summation of primes 
// https://projecteuler.net/problem=10

import 'dart:math';

bool isPrime(int n) {
  if (n <= 1) {
    return false;
  }

  for (int i = 2; i <= sqrt(n); i++) {
    if (n % i == 0) {
      return false;
    }
  }

  return true;
}

void main() {
  int limit = 2000000;
  int sum = 0;

  for (int i = 2; i < limit; i++) {
    if (isPrime(i)) {
      sum += i;
    }
  }

  print("The sum of all primes below $limit is $sum");
}
