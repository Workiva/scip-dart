  import 'more.dart' deferred as more;
// definition scip-dart pub dart_test 1.0.0 lib/`other.dart`/
//                               ^^^^ definition scip-dart pub dart_test 1.0.0 lib/`other.dart`/more.
//                               documentation
//                               > ```dart
//                               > as more
//                               > ```
  
  class Foo {
//      ^^^ definition scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#
//      documentation
//      > ```dart
//      > class Foo
//      > ```
    int _far;
//  ^^^ reference scip-dart pub dart:core 3.1.0 dart:core/`int.dart`/int#
//      ^^^^ definition local 0
//      documentation
//      > ```dart
//      > int _far
//      > ```
//      diagnostic Warning:
//      > The value of the field '_far' isn't used.
    bool value;
//  ^^^^ reference scip-dart pub dart:core 3.1.0 dart:core/`bool.dart`/bool#
//       ^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#value.
//       documentation
//       > ```dart
//       > bool value
//       > ```
    String value2;
//  ^^^^^^ reference scip-dart pub dart:core 3.1.0 dart:core/`string.dart`/String#
//         ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#value2.
//         documentation
//         > ```dart
//         > String value2
//         > ```
    double value3;
//  ^^^^^^ reference scip-dart pub dart:core 3.1.0 dart:core/`double.dart`/double#
//         ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#value3.
//         documentation
//         > ```dart
//         > double value3
//         > ```
    Foo(this._far);
//  ^^^ definition scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#`<constructor>`().
//  documentation
//  > ```dart
//  > Foo Foo(int _far)
//  > ```
//  diagnostic Error:
//  > Non-nullable instance field 'value' must be initialized.
//  diagnostic Error:
//  > Non-nullable instance field 'value2' must be initialized.
//  diagnostic Error:
//  > Non-nullable instance field 'value3' must be initialized.
//  ^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#
//  diagnostic Error:
//  > Non-nullable instance field 'value' must be initialized.
//  diagnostic Error:
//  > Non-nullable instance field 'value2' must be initialized.
//  diagnostic Error:
//  > Non-nullable instance field 'value3' must be initialized.
//      ^^^^ reference local 0
//           ^^^^ definition local 1
//           documentation
//           > ```dart
//           > int _far
//           > ```
  }
  
  class Bar {
//      ^^^ definition scip-dart pub dart_test 1.0.0 lib/`other.dart`/Bar#
//      documentation
//      > ```dart
//      > class Bar
//      > ```
    String _someValue;
//  ^^^^^^ reference scip-dart pub dart:core 3.1.0 dart:core/`string.dart`/String#
//         ^^^^^^^^^^ definition local 2
//         documentation
//         > ```dart
//         > String _someValue
//         > ```
    Bar(this._someValue);
//  ^^^ definition scip-dart pub dart_test 1.0.0 lib/`other.dart`/Bar#`<constructor>`().
//  documentation
//  > ```dart
//  > Bar Bar(String _someValue)
//  > ```
//  ^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/Bar#
//      ^^^^ reference local 2
//           ^^^^^^^^^^ definition local 3
//           documentation
//           > ```dart
//           > String _someValue
//           > ```
  
    void someMethod() {
//       ^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`other.dart`/Bar#someMethod().
//       documentation
//       > ```dart
//       > void someMethod()
//       > ```
      _someValue = 'asdf';
//    ^^^^^^^^^^ reference local 2
      print(_someValue);
//    ^^^^^ reference scip-dart pub dart:core 3.1.0 dart:core/`print.dart`/print().
//          ^^^^^^^^^^ reference local 2
    }
  }
  
  void main() {
//     ^^^^ definition scip-dart pub dart_test 1.0.0 lib/`other.dart`/main().
//     documentation
//     > ```dart
//     > void main()
//     > ```
    more.loadLibrary().then((_) => {
//  ^^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/more.
//                     ^^^^ reference scip-dart pub dart:async 3.1.0 dart:async/`future.dart`/Future#then().
//                           ^ definition local 4
//                           documentation
//                           > ```dart
//                           > dynamic _
//                           > ```
      Bar('a').someMethod.call()
//    ^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/Bar#
//             ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/Bar#someMethod().
    });
  
    Foo()..value = false;
//  ^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#
//         ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#value.
  
    final someStr = 'someStr';
//        ^^^^^^^ definition local 5
//        documentation
//        > ```dart
//        > String someStr
//        > ```
    Foo()
//  ^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#
      ..value = true
//      ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#value.
      ..value2 = someStr
//      ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#value2.
//               ^^^^^^^ reference local 5
      ..value3 = 2.15
//      ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#value3.
  }
