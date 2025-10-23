const foo = 'asdf';
//    ^^^ definition scip-dart pub scip_dart_test . lib/`variables.dart`/foo.

final String bar = 'asdf';
//    ^^^^^^ reference scip-dart pub dart:core . dart:core/`string.dart`/String#
//           ^^^ definition scip-dart pub scip_dart_test . lib/`variables.dart`/bar.

var zar = 1;
//  ^^^ definition scip-dart pub scip_dart_test . lib/`variables.dart`/zar.

void main() {
  final variable = 'some local variable';
  //    ^^^^^^^^ definition local 0

  print(variable);
  //    ^^^^^^^^ reference local 0

  print(foo + bar + zar.toString());
  //    ^^^ reference scip-dart pub scip_dart_test . lib/`variables.dart`/foo.
  //          ^^^ reference scip-dart pub scip_dart_test . lib/`variables.dart`/bar.
  //                ^^^ reference scip-dart pub scip_dart_test . lib/`variables.dart`/zar.
}