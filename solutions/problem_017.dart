// Number letter counts
// https://projecteuler.net/problem=17

List<String> ones = [
  '',
  'one',
  'two',
  'three',
  'four',
  'five',
  'six',
  'seven',
  'eight',
  'nine',
];

List<String> teens = [
  '',
  'eleven',
  'twelve',
  'thirteen',
  'fourteen',
  'fifteen',
  'sixteen',
  'seventeen',
  'eighteen',
  'nineteen',
];

List<String> tens = [
  '',
  'ten',
  'twenty',
  'thirty',
  'forty',
  'fifty',
  'sixty',
  'seventy',
  'eighty',
  'ninety',
];

List<String> hundreds = [
  '',
  'one hundred',
  'two hundred',
  'three hundred',
  'four hundred',
  'five hundred',
  'six hundred',
  'seven hundred',
  'eight hundred',
  'nine hundred',
];

void main(List<String> args) {
  final numbers = <String>[];

  int sum = 0;
  for (int i = 1; i <= 1000; i++) {
    // print(numberLetterCounter(i));
    sum += numberLetterCounter(i).replaceAll(RegExp(r'\s+|\-'), '').length;
  }

  print(sum);
}

String numberLetterCounter(int number) {
  final w = <String>[];

  if (number == 1000) {
    w.add('one thousand');
  }

  if (100 <= number && number < 1000) {
    w.add(hundreds[number ~/ 100]);
    if (number % 100 != 0) {
      w.add('and');
    }
    number = number % 100;
  }
  if (number == 10 || (20 <= number && number < 100)) {
    w.add(tens[number ~/ 10]);
    number = number % 10;
  }
  if (11 <= number && number < 20) {
    w.add(teens[number % 10]);
  } else if (0 < number && number <= 9) {
    if (w.isNotEmpty && tens.contains(w[w.length - 1])) {
      w[w.length - 1] = w[w.length - 1] + '-' + ones[number % 10];
    } else {
      w.add(ones[number % 10]);
    }
  }

  return w.join(' ').toString();
}
