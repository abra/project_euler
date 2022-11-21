// Longest Collatz sequence
// https://projecteuler.net/problem=14

var globVar = <int>[];

main(List<String> args) {
  int max = 0;
  int initElement = 0;
  int start = 1000000;
  int count = 1;

  while (count < start) {
    globVar.clear();
    generate(count);

    if (max < globVar.length) {
      max = globVar.length;
      initElement = globVar[0];
    }
    count++;
  }

  print('Longest sequence is $max and initial element is $initElement');
}

int generate(int x) {
  globVar.add(x);

  if (x == 1) return 1;
  if (x % 2 == 0) {
    return generate(x ~/ 2);
  } else {
    return generate(3 * x + 1);
  }
}
