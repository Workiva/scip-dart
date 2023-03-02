  /// This is a fib function
// definition scip-dart pub dart_test 1.0.0 lib/main.dart/
  ///
  /// Takes a number
  /// Returns a number
  int fib(int n) {
//^^^ reference scip-dart pub dart:core 2.18.0 lib/core/int.dart/int#
//    ^^^ definition scip-dart pub dart_test 1.0.0 lib/main.dart/fib().
//    documentation ```dart
//    documentation This is a fib function
//        ^^^ reference scip-dart pub dart:core 2.18.0 lib/core/int.dart/int#
//            ^ definition local 0
//            documentation ```dart
    if (n <= 1) return 0;
//      ^ reference local 0
    return fib(n - 1) + fib(n - 2);
//         ^^^ reference scip-dart pub dart_test 1.0.0 lib/main.dart/fib().
//             ^ reference local 0
//                      ^^^ reference scip-dart pub dart_test 1.0.0 lib/main.dart/fib().
//                          ^ reference local 0
  }
  
  void print_fib(int a) {
//     ^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/main.dart/print_fib().
//     documentation ```dart
//               ^^^ reference scip-dart pub dart:core 2.18.0 lib/core/int.dart/int#
//                   ^ definition local 1
//                   documentation ```dart
    print(fib(a));
//  ^^^^^ reference scip-dart pub dart:core 2.18.0 lib/core/print.dart/print().
//        ^^^ reference scip-dart pub dart_test 1.0.0 lib/main.dart/fib().
//            ^ reference local 1
  }
  
  final y = 'Hello';
//      ^ definition scip-dart pub dart_test 1.0.0 lib/main.dart/y.
//      documentation ```dart
  String capture() {
//^^^^^^ reference scip-dart pub dart:core 2.18.0 lib/core/string.dart/String#
//       ^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/main.dart/capture().
//       documentation ```dart
    return y;
//         ^ reference scip-dart pub dart_test 1.0.0 lib/main.dart/y.
  }
  
  final capture_lambda = () => y;
//      ^^^^^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/main.dart/capture_lambda.
//      documentation ```dart
//                             ^ reference scip-dart pub dart_test 1.0.0 lib/main.dart/y.
  
  void main() {
//     ^^^^ definition scip-dart pub dart_test 1.0.0 lib/main.dart/main().
//     documentation ```dart
    for (var i = 0; i <= 10; i++) {}
//           ^ definition local 2
//           documentation ```dart
//                  ^ reference local 2
//                           ^ reference local 2
  
    for (var i in [1, 2, 3]) {
//           ^ definition local 3
//           documentation ```dart
      print(i);
//    ^^^^^ reference scip-dart pub dart:core 2.18.0 lib/core/print.dart/print().
//          ^ reference local 3
    }
  
    var a = 0;
//      ^ definition local 4
//      documentation ```dart
    a = 1;
//  ^ reference local 4
    print_fib(a);
//  ^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/main.dart/print_fib().
//            ^ reference local 4
  }
  
  void forever() {
//     ^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/main.dart/forever().
//     documentation ```dart
    return forever();
//         ^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/main.dart/forever().
  }
  
