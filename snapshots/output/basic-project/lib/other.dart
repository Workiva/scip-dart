  import 'more.dart' deferred as more;
// definition scip-dart pub dart_test 1.0.0 lib/`other.dart`/
//                               ^^^^ definition scip-dart pub dart_test 1.0.0 lib/`other.dart`/more.
  
  class Foo {
//      ^^^ definition scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#
    int _far;
//  ^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`int.dart`/int#
//      ^^^^ definition local 0
    bool value;
//  ^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`bool.dart`/bool#
//       ^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#value.
    String value2;
//  ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
//         ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#value2.
    double? value3;
//  ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`double.dart`/double#
//          ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#value3.
    Foo(
//  ^^^ definition scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#`<constructor>`().
      this._far, {
      required this.value,
      required this.value2,
      this.value3,
    }) {
      print(_far);
    }
  }
  
  class Bar {
//      ^^^ definition scip-dart pub dart_test 1.0.0 lib/`other.dart`/Bar#
    String _someValue;
//  ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
//         ^^^^^^^^^^ definition local 1
    Bar(this._someValue);
//  ^^^ definition scip-dart pub dart_test 1.0.0 lib/`other.dart`/Bar#`<constructor>`().
  
    void someMethod() {
//       ^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`other.dart`/Bar#someMethod().
      _someValue = 'asdf';
//    ^^^^^^^^^^ reference local 1
      print(_someValue);
//    ^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`print.dart`/print().
//          ^^^^^^^^^^ reference local 1
    }
  }
  
  void main() {
//     ^^^^ definition scip-dart pub dart_test 1.0.0 lib/`other.dart`/main().
    more.loadLibrary().then((_) => {
//  ^^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/more.
//                     ^^^^ reference scip-dart pub dart:async 2.19.0 dart:async/`future.dart`/Future#then().
//                           ^ definition local 2
      Bar('a').someMethod.call()
//    ^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/Bar#`<constructor>`().
//             ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/Bar#someMethod().
    });
  
    Foo(1, value: true, value2: 'asdf')..value = false;
//  ^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#`<constructor>`().
//         ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#`<constructor>`().(value)
//                      ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#`<constructor>`().(value2)
//                                       ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#value.
  
    final someStr = 'someStr';
//        ^^^^^^^ definition local 3
    Foo(2, value: false, value2: 'some Val!')
//  ^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#`<constructor>`().
//         ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#`<constructor>`().(value)
//                       ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#`<constructor>`().(value2)
      ..value = true
//      ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#value.
      ..value2 = someStr
//      ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#value2.
//               ^^^^^^^ reference local 3
      ..value3 = 2.15;
//      ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/Foo#value3.
  
    more.test((_) => 'val');
//  ^^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/more.
//       ^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/test().
//             ^ definition local 4
  }
