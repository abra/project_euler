// Lattice paths
// https://projecteuler.net/problem=15

main(List<String> args) {
  final size = 20;
  int p = 1;

  for (int i = 0; i < size; i++) {
    p *= (2 * size) - i;
    p = (p / (i + 1)).toInt();
  }

  print(p);
}
