// Even Fibonacci numbers
// https://projecteuler.net/problem=2

main(List<String> args) {
  int sum = 0, i = 1;

  while (sum < 4000000) {
    int n = fibonacci(i);

    if (n.isEven) sum += n;

    i++;
  }

  print(sum);
}

int fibonacci(int n) {
  return n < 2 ? n : fibonacci(n - 1) + fibonacci(n - 2);
}

