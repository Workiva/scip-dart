  abstract class Mammal {
// definition scip-dart pub dart_test 1.0.0 lib/main.dart/
//               ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/main.dart/Mammal#
//               documentation ```dart
    String get hierarchy;
//             ^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/main.dart/Mammal#hierarchy.
//             documentation ```dart
  }
  
  abstract class Animal extends Mammal {
//               ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/main.dart/Animal#
//               documentation ```dart
//               relationship scip-dart pub dart_test 1.0.0 lib/main.dart/Mammal# implementation
    String sound() => 'NOISE!';
//         ^^^^^ definition scip-dart pub dart_test 1.0.0 lib/main.dart/Animal#sound().
//         documentation ```dart
  }
  
  mixin SwimAction {
//      ^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/main.dart/SwimAction#
//      documentation ```dart
    void execute() => print('swimming...');
//       ^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/main.dart/SwimAction#execute().
//       documentation ```dart
//                    ^^^^^ reference scip-dart pub dart:core 3.1.0 dart:core/print.dart/print().
  }
  
  class Dog extends Animal with SwimAction {
//      ^^^ definition scip-dart pub dart_test 1.0.0 lib/main.dart/Dog#
//      documentation ```dart
//      relationship scip-dart pub dart_test 1.0.0 lib/main.dart/Animal# implementation
//      relationship scip-dart pub dart_test 1.0.0 lib/main.dart/Mammal# implementation
//      relationship scip-dart pub dart_test 1.0.0 lib/main.dart/SwimAction# implementation
    @override
//   ^^^^^^^^ reference scip-dart pub dart:core 3.1.0 dart:core/annotations.dart/override.
    String sound() => 'woof';
//         ^^^^^ definition scip-dart pub dart_test 1.0.0 lib/main.dart/Dog#sound().
//         documentation ```dart
//         relationship scip-dart pub dart_test 1.0.0 lib/main.dart/Animal#sound(). implementation reference
  
    @override
//   ^^^^^^^^ reference scip-dart pub dart:core 3.1.0 dart:core/annotations.dart/override.
    String get hierarchy => 'dog.animal.mammal';
//             ^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/main.dart/Dog#hierarchy.
//             documentation ```dart
//             relationship scip-dart pub dart_test 1.0.0 lib/main.dart/Mammal#hierarchy. implementation reference
  }
