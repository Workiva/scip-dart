import 'package:dart_test/other.dart';

/// This is a fib function
///
/// Takes a number
/// Returns a number
int fib(int n) {
  if (n <= 1) return 0;
  return fib(n - 1) + fib(n - 2);
}

void print_fib(int a) {
  print(fib(a));
}

final y = 'Hello';
String capture() {
  return y;
}

final capture_lambda = () => y;

void main() {
  for (var i = 0; i <= 10; i++) {}

  for (var i in [1, 2, 3]) {
    print(i);
  }

  var a = 0;
  a = 1;
  print_fib(a);
}

void forever() {
  return forever();
}

class SomeLocalClass {}

/// Reference parameter: [value]
/// Reference class: [SomeLocalClass]
/// Reference external class: [Foo]
void someFunction(int value) {
  Foo(1);
}