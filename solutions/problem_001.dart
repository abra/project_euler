// Multiples of 3 or 5
// https://projecteuler.net/problem=1

main(List<String> args) {
  int sum = 0;

  for (int i = 1; i < 1000; i++) {
    sum += (i % 3 == 0 || i % 5 == 0) ? i : 0;
  }

  print(sum);
}
