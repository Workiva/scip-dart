  import 'package:dart_test/other.dart';
// definition scip-dart pub dart_test 1.0.0 lib/`main.dart`/
  
  /// This is a fib function
  ///
  /// Takes a number
  /// Returns a number
  int fib(int n) {
//^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`int.dart`/int#
//    ^^^ definition scip-dart pub dart_test 1.0.0 lib/`main.dart`/fib().
//    documentation
//    > This is a fib function
//    > Takes a number
//    > Returns a number
//        ^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`int.dart`/int#
//            ^ definition local 0
    if (n <= 1) return 0;
//      ^ reference local 0
    return fib(n - 1) + fib(n - 2);
//         ^^^ reference scip-dart pub dart_test 1.0.0 lib/`main.dart`/fib().
//             ^ reference local 0
//                      ^^^ reference scip-dart pub dart_test 1.0.0 lib/`main.dart`/fib().
//                          ^ reference local 0
  }
  
  void print_fib(int a) {
//     ^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`main.dart`/print_fib().
//               ^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`int.dart`/int#
//                   ^ definition local 1
    print(fib(a));
//  ^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`print.dart`/print().
//        ^^^ reference scip-dart pub dart_test 1.0.0 lib/`main.dart`/fib().
//            ^ reference local 1
  }
  
  final y = 'Hello';
//      ^ definition scip-dart pub dart_test 1.0.0 lib/`main.dart`/y.
  String capture() {
//^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
//       ^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`main.dart`/capture().
    return y;
//         ^ reference scip-dart pub dart_test 1.0.0 lib/`main.dart`/y.
  }
  
  final capture_lambda = () => y;
//      ^^^^^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`main.dart`/capture_lambda.
//                             ^ reference scip-dart pub dart_test 1.0.0 lib/`main.dart`/y.
  
  void main() {
//     ^^^^ definition scip-dart pub dart_test 1.0.0 lib/`main.dart`/main().
    for (var i = 0; i <= 10; i++) {}
//           ^ definition local 2
//                  ^ reference local 2
//                           ^ reference local 2
  
    for (var i in [1, 2, 3]) {
//           ^ definition local 3
      print(i);
//    ^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`print.dart`/print().
//          ^ reference local 3
    }
  
    var a = 0;
//      ^ definition local 4
    a = 1;
//  ^ reference local 4
    print_fib(a);
//  ^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`main.dart`/print_fib().
//            ^ reference local 4
  }
  
  void forever() {
//     ^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`main.dart`/forever().
    return forever();
//         ^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`main.dart`/forever().
  }
  
  class SomeLocalClass {}
//      ^^^^^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`main.dart`/SomeLocalClass#
  
  /// Reference parameter: [value]
//                          ^^^^^ reference local 5
  /// Reference class: [SomeLocalClass]
//                      ^^^^^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`main.dart`/SomeLocalClass#
  /// Reference external class: [Foo]
//                               ^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#
  /// Missing Reference: [IDontExist]
  void someFunction(int value) {
//     ^^^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`main.dart`/someFunction().
//     documentation
//     > Reference parameter: [value]
//     > Reference class: [SomeLocalClass]
//     > Reference external class: [Foo]
//     > Missing Reference: [IDontExist]
//                  ^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`int.dart`/int#
//                      ^^^^^ definition local 5
    Foo(1, value: true, value2: '');
//  ^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#
//         ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#`<constructor>`().(value)
//                      ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#`<constructor>`().(value2)
  }
