  import 'more.dart' deferred as more;
// definition scip-dart pub dart_test 1.0.0 lib/other.dart/
//                               ^^^^ definition scip-dart pub dart_test 1.0.0 lib/other.dart/more.
//                               documentation ```dart
  
  class Foo {
//      ^^^ definition scip-dart pub dart_test 1.0.0 lib/other.dart/Foo#
//      documentation ```dart
    int _far;
//  ^^^ reference scip-dart pub dart:core 3.1.0 dart:core/int.dart/int#
//      ^^^^ definition local 0
//      documentation ```dart
    bool value;
//  ^^^^ reference scip-dart pub dart:core 2.18.0 dart:core/bool.dart/bool#
//       ^^^^^ definition scip-dart pub dart_test 1.0.0 lib/other.dart/Foo#value.
//       documentation ```dart
    String value2;
//  ^^^^^^ reference scip-dart pub dart:core 2.18.0 dart:core/string.dart/String#
//         ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/other.dart/Foo#value2.
//         documentation ```dart
    double value3;
//  ^^^^^^ reference scip-dart pub dart:core 2.18.0 dart:core/double.dart/double#
//         ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/other.dart/Foo#value3.
//         documentation ```dart
    Foo(this._far);
//  ^^^ definition scip-dart pub dart_test 1.0.0 lib/other.dart/Foo#<constructor>().
//  documentation ```dart
//  ^^^ reference scip-dart pub dart_test 1.0.0 lib/other.dart/Foo#
//      ^^^^ reference local 0
//           ^^^^ definition local 1
//           documentation ```dart
  }
  
  class Bar {
//      ^^^ definition scip-dart pub dart_test 1.0.0 lib/other.dart/Bar#
//      documentation ```dart
    String _someValue;
//  ^^^^^^ reference scip-dart pub dart:core 3.1.0 dart:core/string.dart/String#
//         ^^^^^^^^^^ definition local 2
//         documentation ```dart
    Bar(this._someValue);
//  ^^^ definition scip-dart pub dart_test 1.0.0 lib/other.dart/Bar#<constructor>().
//  documentation ```dart
//  ^^^ reference scip-dart pub dart_test 1.0.0 lib/other.dart/Bar#
//      ^^^^ reference local 2
//           ^^^^^^^^^^ definition local 3
//           documentation ```dart
  
    void someMethod() {
//       ^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/other.dart/Bar#someMethod().
//       documentation ```dart
      _someValue = 'asdf';
//    ^^^^^^^^^^ reference local 2
      print(_someValue);
//    ^^^^^ reference scip-dart pub dart:core 3.1.0 dart:core/print.dart/print().
//          ^^^^^^^^^^ reference local 2
    }
  }
  
  void main() {
//     ^^^^ definition scip-dart pub dart_test 1.0.0 lib/other.dart/main().
//     documentation ```dart
    more.loadLibrary().then((_) => {
//  ^^^^ reference scip-dart pub dart_test 1.0.0 lib/other.dart/more.
//                     ^^^^ reference scip-dart pub dart:async 3.1.0 dart:async/future.dart/Future#then().
//                           ^ definition local 4
//                           documentation ```dart
      Bar('a').someMethod.call()
//    ^^^ reference scip-dart pub dart_test 1.0.0 lib/other.dart/Bar#
//             ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/other.dart/Bar#someMethod().
    });
  
    Foo()..value = false;
//  ^^^ reference scip-dart pub dart_test 1.0.0 lib/other.dart/Foo#
//         ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/other.dart/Foo#value.
  
    final someStr = 'someStr';
//        ^^^^^^^ definition local 5
//        documentation ```dart
    Foo()
//  ^^^ reference scip-dart pub dart_test 1.0.0 lib/other.dart/Foo#
      ..value = true
//      ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/other.dart/Foo#value.
      ..value2 = someStr
//      ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/other.dart/Foo#value2.
//               ^^^^^^^ reference local 5
      ..value3 = 2.15
//      ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/other.dart/Foo#value3.
  }
