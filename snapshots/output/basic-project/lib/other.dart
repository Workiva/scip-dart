  class Foo {
// definition scip-dart pub dart_test 1.0.0 lib/other.dart/
//      ^^^ definition scip-dart pub dart_test 1.0.0 lib/other.dart/Foo#
//      documentation ```dart
    int _far;
//  ^^^ reference scip-dart pub dart:core 2.18.0 dart:core/int.dart/int#
//      ^^^^ definition local 0
//      documentation ```dart
    Foo(this._far);
//  ^^^ definition scip-dart pub dart_test 1.0.0 lib/other.dart/Foo#<constructor>().
//  documentation ```dart
//  ^^^ reference scip-dart pub dart_test 1.0.0 lib/other.dart/Foo#
//      ^^^^ reference local 0
//           ^^^^ definition local 1
//           documentation ```dart
  }
  
