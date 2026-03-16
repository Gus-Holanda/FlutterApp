import 'package:flutter_test/flutter_test.dart';

bool isPrime(int number) {
  if (number <= 1) return false;

  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;
}

int sumOfDigits(int number) {
  if (number < 0) {
    throw ArgumentError('Número não pode ser negativo.');
  }

  int sum = 0;

  while (number > 0) {
    sum += number % 10;
    number ~/= 10;
  }

  return sum;
}

void main() {
  group('Testes de Número primo', () {
    test('Número primo 7', () {
      expect(isPrime(7), isTrue);
    });

    test('Número não primo 10', () {
      expect(isPrime(10), isFalse);
    });
  });

  group('Testes de Soma dos dígitos', () {
    test('Soma dos dígitos de 123', () {
      expect(sumOfDigits(123), equals(6));
    });

    test('Soma dos dígitos de -1', () {
      expect(() => sumOfDigits(-1), throwsArgumentError);
    });
  });
}
