// Smallest multiple
// https://projecteuler.net/problem=5

main(List<String> args) {
  bool notFound = true;
  int number = 1;
  int count = 1;
  int x = 20;

  while (notFound) {
    while (true) {
      if (number % count != 0) {
        number++;
        break;
      }
      if (count == x) {
        notFound = false;
        break;
      }
      count++;
    }

    count = 1;
  }

  print(number);
}
