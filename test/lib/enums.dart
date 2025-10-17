enum AnEnum {
//   ^^^^^^ definition scip-dart pub scip_dart_test . lib/`enums.dart`/AnEnum#
  a,
//^ definition scip-dart pub scip_dart_test . lib/`enums.dart`/AnEnum#a.
  b
//^ definition scip-dart pub scip_dart_test . lib/`enums.dart`/AnEnum#b.
}

enum AnEnhancedEnum {
//   ^^^^^^^^^^^^^^ definition scip-dart pub scip_dart_test . lib/`enums.dart`/AnEnhancedEnum#

  a(val: 3),
//^ definition scip-dart pub scip_dart_test . lib/`enums.dart`/AnEnhancedEnum#a.
//  ^^^ reference scip-dart pub scip_dart_test . lib/`enums.dart`/AnEnhancedEnum#`<constructor>`().(val)

  b(val: 2);
//^ definition scip-dart pub scip_dart_test . lib/`enums.dart`/AnEnhancedEnum#b.
//  ^^^ reference scip-dart pub scip_dart_test . lib/`enums.dart`/AnEnhancedEnum#`<constructor>`().(val)

  const AnEnhancedEnum({
//      ^^^^^^^^^^^^^^ definition scip-dart pub scip_dart_test . lib/`enums.dart`/AnEnhancedEnum#`<constructor>`().
    required this.val,
//                ^^^ reference scip-dart pub scip_dart_test . lib/`enums.dart`/AnEnhancedEnum#val.
  });

  final int val;
//      ^^^ reference scip-dart pub dart:core . dart:core/`int.dart`/int#
//          ^^^ definition scip-dart pub scip_dart_test . lib/`enums.dart`/AnEnhancedEnum#val.

  int get getter => val * 2;
//^^^ reference scip-dart pub dart:core . dart:core/`int.dart`/int#
//        ^^^^^^ definition scip-dart pub scip_dart_test . lib/`enums.dart`/AnEnhancedEnum#`<get>getter`.

  String method(String inp) => inp + val.toString();
//^^^^^^ reference scip-dart pub dart:core . dart:core/`string.dart`/String#
//       ^^^^^^ definition scip-dart pub scip_dart_test . lib/`enums.dart`/AnEnhancedEnum#method().
}