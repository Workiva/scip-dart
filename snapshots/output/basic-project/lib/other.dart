  import 'more.dart' deferred as more;
// definition scip-dart pub dart_test 1.0.0 lib/`other.dart`/
//                               ^^^^ definition scip-dart pub dart_test 1.0.0 lib/`other.dart`/more.
  
  class Foo {
//      ^^^ definition scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#
    int _far;
//  ^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`int.dart`/int#
//      ^^^^ definition local 0
//      diagnostic Information:
//      > The value of the field '_far' isn't used.
    bool value;
//  ^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`bool.dart`/bool#
//       ^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#value.
    String value2;
//  ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
//         ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#value2.
    double value3;
//  ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`double.dart`/double#
//         ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#value3.
    Foo(this._far);
//  ^^^ definition scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#`<constructor>`().
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
  }
  
  class Bar {
//      ^^^ definition scip-dart pub dart_test 1.0.0 lib/`other.dart`/Bar#
    String _someValue;
//  ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
//         ^^^^^^^^^^ definition local 2
    Bar(this._someValue);
//  ^^^ definition scip-dart pub dart_test 1.0.0 lib/`other.dart`/Bar#`<constructor>`().
//  ^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/Bar#
//      ^^^^ reference local 2
//           ^^^^^^^^^^ definition local 3
  
    void someMethod() {
//       ^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`other.dart`/Bar#someMethod().
      _someValue = 'asdf';
//    ^^^^^^^^^^ reference local 2
      print(_someValue);
//    ^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`print.dart`/print().
//          ^^^^^^^^^^ reference local 2
    }
  }
  
  void main() {
//     ^^^^ definition scip-dart pub dart_test 1.0.0 lib/`other.dart`/main().
    more.loadLibrary().then((_) => {
//  ^^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/more.
//                     ^^^^ reference scip-dart pub dart:async 2.19.0 dart:async/`future.dart`/Future#then().
//                           ^ definition local 4
      Bar('a').someMethod.call()
//    ^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/Bar#
//             ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/Bar#someMethod().
    });
  
    Foo()..value = false;
//  ^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#
//         ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#value.
  
    final someStr = 'someStr';
//        ^^^^^^^ definition local 5
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
