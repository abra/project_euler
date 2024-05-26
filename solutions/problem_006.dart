// Sum square difference
// https://projecteuler.net/problem=6

main(List<String> args) {
  final int n = 100;
  int sum = 0;
  int squared = 0;
  int result = 0;

  sum = n * (n + 1) ~/ 2;
  squared = (n * (n + 1) * (2 * n + 1)) ~/ 6;

  result = sum * sum - squared;
  print(result);
}
