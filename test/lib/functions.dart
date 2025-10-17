
void main() {
  withReturn();
  // <- reference scip-dart pub scip_dart_test . lib/`functions.dart`/withReturn().
}

void basicFunction() {}
//   ^^^^^^^^^^^^^ definition scip-dart pub scip_dart_test . lib/`functions.dart`/basicFunction().

String withReturn() => 'asdf';
// <- reference scip-dart pub dart:core . dart:core/`string.dart`/String#

void withParameters(
  String pos,
//^^^^^^ reference scip-dart pub dart:core . dart:core/`string.dart`/String#
//       ^^^ definition local 0
  int pos2,
//^^^ reference scip-dart pub dart:core . dart:core/`int.dart`/int#
//    ^^^^ definition local 1
) {}

void withNamedParameters(
  String base, {
//^^^^^^ reference scip-dart pub dart:core . dart:core/`string.dart`/String#
//       ^^^^ definition local .
    
  String? name,
//^^^^^^ reference scip-dart pub dart:core . dart:core/`string.dart`/String#
//        ^^^^ definition scip-dart pub scip_dart_test . lib/`functions.dart`/withNamedParameters().(name)

  int? name2,
//^^^ reference scip-dart pub dart:core . dart:core/`int.dart`/int#
//     ^^^^^ definition scip-dart pub scip_dart_test . lib/`functions.dart`/withNamedParameters().(name2)
}) {}

void withPositionalParameters(
  String base, [
//^^^^^^ reference scip-dart pub dart:core . dart:core/`string.dart`/String#
//       ^^^^ definition local .

  String? pos,
//^^^^^^ reference scip-dart pub dart:core . dart:core/`string.dart`/String#
//        ^^^ definition local .

  int? pos2
//^^^ reference scip-dart pub dart:core . dart:core/`int.dart`/int#
//     ^^^^ definition local .
]) {}
