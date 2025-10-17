class AClass {
  final inferred = 'a';
//      ^^^^^^^^ definition scip-dart pub scip_dart_test . lib/`fields.dart`/AClass#inferred.
  
  final String declared = 'b';
//      ^^^^^^ reference scip-dart pub dart:core . dart:core/`string.dart`/String#
//             ^^^^^^^^ definition scip-dart pub scip_dart_test . lib/`fields.dart`/AClass#declared.

  static String static = 'c';
//       ^^^^^^ reference scip-dart pub dart:core . dart:core/`string.dart`/String#
//              ^^^^^^ definition scip-dart pub scip_dart_test . lib/`fields.dart`/AClass#static.

  int get getter => 0;
//^^^ reference scip-dart pub dart:core . dart:core/`int.dart`/int#
//        ^^^^^^ definition scip-dart pub scip_dart_test . lib/`fields.dart`/AClass#`<get>getter`.

  set setter(int v) {}
//    ^^^^^^ definition scip-dart pub scip_dart_test . lib/`fields.dart`/AClass#`<set>setter`.
//           ^^^ reference scip-dart pub dart:core . dart:core/`int.dart`/int#
//               ^ definition local .
}