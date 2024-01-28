  abstract class Mammal {
// definition scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/
//               ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Mammal#
//               documentation
//               > ```dart
//               > abstract class Mammal
//               > ```
    String get hierarchy;
//  ^^^^^^ reference scip-dart pub dart:core 3.1.0 dart:core/`string.dart`/String#
//             ^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Mammal#hierarchy.
//             documentation
//             > ```dart
//             > String get hierarchy
//             > ```
  }
  
  abstract class Animal extends Mammal {
//               ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Animal#
//               documentation
//               > ```dart
//               > abstract class Animal extends Mammal
//               > ```
//               relationship scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Mammal# implementation
//                              ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Mammal#
    String sound() => 'NOISE!';
//  ^^^^^^ reference scip-dart pub dart:core 3.1.0 dart:core/`string.dart`/String#
//         ^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Animal#sound().
//         documentation
//         > ```dart
//         > String sound()
//         > ```
  }
  
  mixin SwimAction {
//      ^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/SwimAction#
//      documentation
//      > ```dart
//      > mixin SwimAction on Object
//      > ```
    void execute() => print('swimming...');
//       ^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/SwimAction#execute().
//       documentation
//       > ```dart
//       > void execute()
//       > ```
//                    ^^^^^ reference scip-dart pub dart:core 3.1.0 dart:core/`print.dart`/print().
  }
  
  class Dog extends Animal with SwimAction {
//      ^^^ definition scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Dog#
//      documentation
//      > ```dart
//      > class Dog extends Animal with SwimAction
//      > ```
//      relationship scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Animal# implementation
//      relationship scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Mammal# implementation
//      relationship scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/SwimAction# implementation
//                  ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Animal#
//                              ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/SwimAction#
    @override
//   ^^^^^^^^ reference scip-dart pub dart:core 3.1.0 dart:core/`annotations.dart`/override.
    String sound() => 'woof';
//  ^^^^^^ reference scip-dart pub dart:core 3.1.0 dart:core/`string.dart`/String#
//         ^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Dog#sound().
//         documentation
//         > ```dart
//         > String sound()
//         > ```
//         relationship scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Animal#sound(). implementation reference
  
    @override
//   ^^^^^^^^ reference scip-dart pub dart:core 3.1.0 dart:core/`annotations.dart`/override.
    String get hierarchy => 'dog.animal.mammal';
//  ^^^^^^ reference scip-dart pub dart:core 3.1.0 dart:core/`string.dart`/String#
//             ^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Dog#hierarchy.
//             documentation
//             > ```dart
//             > String get hierarchy
//             > ```
//             relationship scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/Mammal#hierarchy. implementation reference
  }
