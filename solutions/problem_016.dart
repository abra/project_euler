// Power digit sum
// https://projecteuler.net/problem=16

main(List<String> args) {
  int result = 0;
  var number = BigInt.from(2).pow(1000);

  while (number != BigInt.from(0)) {
    result += (number % BigInt.from(10)).toInt();
    number = number ~/ BigInt.from(10);
  }

  print(result);
}
