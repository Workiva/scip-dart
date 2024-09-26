void main() {}
//   ^^^^ definition scip-dart pub scip_dart_test 1.0.0 lib/`functions.dart`/main().

String withReturn() => 'asdf';
// <- reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#

void withParameters(
  String pos,
//^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
//       ^^^ definition local 0
  int pos2,
//^^ reference scip-dart pub dart:core 2.19.0 dart:core/`int.dart`/int#
//    ^^^^ definition local 1
) {}

void withNamedParameters({
  String? name,
//^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
//        ^^^^ definition scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
  int? name2,
//^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`int.dart`/int#
//     ^^^^^ definition scip-dart pub dart:core 2.19.0 dart:core/`int.dart`/int#
}) {}

void withPositionalParameters(String base, [String? pos, int? pos2]) {}
