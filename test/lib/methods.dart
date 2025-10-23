class AClass {
  void basicMethod() {}
//     ^^^^^^^^^^^ definition scip-dart pub scip_dart_test . lib/`methods.dart`/AClass#basicMethod().

  String withReturn() => 'asdf';
//^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
//       ^^^^^^^^^^ definition scip-dart pub scip_dart_test 1.0.0 lib/`methods.dart`/AClass#withReturn().

  void withNamedParameters(
//     ^^^^^^^^^^^^^^^^^^^ definition scip-dart pub scip_dart_test 1.0.0 lib/`methods.dart`/AClass#withNamedParameters().
    String base, { 
//  ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
//         ^^^^ definition local .

    String? name, 
//  ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
//          ^^^^ definition scip-dart pub scip_dart_test 1.0.0 lib/`methods.dart`/AClass#withNamedParameters().(name)

    int? name2
//  ^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`int.dart`/int#
//       ^^^^^ definition scip-dart pub scip_dart_test 1.0.0 lib/`methods.dart`/AClass#withNamedParameters().(name2)
  }) {}

  void withPositionalParameters(
    String base, [
//  ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
//         ^^^^ definition local .

    String? pos, 
//  ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
//          ^^^ definition local .

    int? pos2,
//  ^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`int.dart`/int#
//       ^^^^ definition local .
  ]) {}
}