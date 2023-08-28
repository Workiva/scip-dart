  import 'more.dart' deferred as more;
// definition scip-dart pub dart_test 1.0.0 lib/other.dart/
//                               ^^^^ definition scip-dart pub dart_test 1.0.0 lib/other.dart/more.
  
  class Foo {
//      ^^^ definition scip-dart pub dart_test 1.0.0 lib/other.dart/Foo#
    int _far;
//  ^^^ reference scip-dart pub dart:core 2.18.0 dart:core/int.dart/int#
//      ^^^^ definition local 0
    Foo(this._far);
//  ^^^ definition scip-dart pub dart_test 1.0.0 lib/other.dart/Foo#<constructor>().
//  ^^^ reference scip-dart pub dart_test 1.0.0 lib/other.dart/Foo#
//      ^^^^ reference local 0
//           ^^^^ definition local 1
  }
  
  class Bar {
//      ^^^ definition scip-dart pub dart_test 1.0.0 lib/other.dart/Bar#
    String _someValue;
//  ^^^^^^ reference scip-dart pub dart:core 2.18.0 dart:core/string.dart/String#
//         ^^^^^^^^^^ definition local 2
    Bar(this._someValue);
//  ^^^ definition scip-dart pub dart_test 1.0.0 lib/other.dart/Bar#<constructor>().
//  ^^^ reference scip-dart pub dart_test 1.0.0 lib/other.dart/Bar#
//      ^^^^ reference local 2
//           ^^^^^^^^^^ definition local 3
  
    void someMethod() {
//       ^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/other.dart/Bar#someMethod().
      _someValue = 'asdf';
//    ^^^^^^^^^^ reference local 2
      print(_someValue);
//    ^^^^^ reference scip-dart pub dart:core 2.18.0 dart:core/print.dart/print().
//          ^^^^^^^^^^ reference local 2
    }
  }
  
  void main() {
//     ^^^^ definition scip-dart pub dart_test 1.0.0 lib/other.dart/main().
    more.loadLibrary().then((_) => {
//  ^^^^ reference scip-dart pub dart_test 1.0.0 lib/other.dart/more.
//                     ^^^^ reference scip-dart pub dart:async 2.18.0 dart:async/future.dart/Future#then().
//                           ^ definition local 4
      Bar('a').someMethod.call()
//    ^^^ reference scip-dart pub dart_test 1.0.0 lib/other.dart/Bar#
//             ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/other.dart/Bar#someMethod().
    });
  }
