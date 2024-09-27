  abstract class Mammal {
// definition scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/
//               ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Mammal#
    String get someGetter;
//  ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
//             ^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Mammal#`<get>someGetter`.
    set someSetter(String v);
//      ^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Mammal#`<set>someSetter`.
//                 ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
//                        ^ definition local 0
    String field = '';
//  ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
//         ^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Mammal#field.
  }
  
  abstract class Animal extends Mammal {
//               ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Animal#
//               relationship scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Mammal# implementation
//                              ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Mammal#
    String sound() => 'NOISE!';
//  ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
//         ^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Animal#sound().
  
    @override
//   ^^^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`annotations.dart`/override.
    String field = 'asdf';
//  ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
//         ^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Animal#field.
//         relationship scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Mammal#field. implementation reference
  }
  
  mixin SwimAction {
//      ^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/SwimAction#
    void execute() => print('swimming...');
//       ^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/SwimAction#execute().
//                    ^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`print.dart`/print().
  }
  
  class Dog extends Animal with SwimAction {
//      ^^^ definition scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Dog#
//      relationship scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Animal# implementation
//      relationship scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Mammal# implementation
//      relationship scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/SwimAction# implementation
//                  ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Animal#
//                              ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/SwimAction#
    @override
//   ^^^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`annotations.dart`/override.
    String field = 'otherVal';
//  ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
//         ^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Dog#field.
//         relationship scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Animal#field. implementation reference
//         relationship scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Mammal#field. implementation reference
  
    @override
//   ^^^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`annotations.dart`/override.
    String sound() => 'woof';
//  ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
//         ^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Dog#sound().
//         relationship scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Animal#sound(). implementation reference
  
    @override
//   ^^^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`annotations.dart`/override.
    String get someGetter => 'value';
//  ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
//             ^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Dog#`<get>someGetter`.
//             relationship scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Mammal#`<get>someGetter`. implementation reference
  
    @override
//   ^^^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`annotations.dart`/override.
    set someSetter(String v) {};
//      ^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Dog#`<set>someSetter`.
//      relationship scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Mammal#`<set>someSetter`. implementation reference
//                 ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
//                        ^ definition local 1
  }
