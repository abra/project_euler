// Largest palindrome product
// https://projecteuler.net/problem=4

main(List<String> args) {
  int max = 0;
  int from = 999;
  int to = 100;

  for (int i = from; i >= to; i--) {
    for (int j = from; j >= to; j--) {
      if (isPolindromeNumber(i * j) && max < i * j) {
        max = i * j;
      }
    }
  }

  print(max);
}

bool isPolindromeNumber(int n) {
  int number = n;

  if (number < 0) {
    return false;
  }

  int reversed = 0;
  while (number > 0) {
    reversed = (reversed * 10) + (number % 10);
    number = (number / 10).toInt();
  }

  return n == reversed;
}


