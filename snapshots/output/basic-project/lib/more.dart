  import 'dart:math';
// definition scip-dart pub dart_test 1.0.0 lib/more.dart/
  
  enum AnimalType {
//     ^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/more.dart/AnimalType#
//     documentation ```dart
    cat,
//  ^^^ definition scip-dart pub dart_test 1.0.0 lib/more.dart/AnimalType#cat.
//  documentation ```dart
    dog,
//  ^^^ definition scip-dart pub dart_test 1.0.0 lib/more.dart/AnimalType#dog.
//  documentation ```dart
    bird,
//  ^^^^ definition scip-dart pub dart_test 1.0.0 lib/more.dart/AnimalType#bird.
//  documentation ```dart
  }
  
  typedef SoundMaker = void Function();
//        ^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/more.dart/SoundMaker#
//        documentation ```dart
  
  mixin SleepMixin {
//      ^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/more.dart/SleepMixin#
//      documentation ```dart
    void sleep() {
//       ^^^^^ definition scip-dart pub dart_test 1.0.0 lib/more.dart/SleepMixin#sleep().
//       documentation ```dart
      print('zzz...');
//    ^^^^^ reference scip-dart pub dart:core 2.18.0 lib/core/print.dart/print().
    }
  }
  
  class Animal with SleepMixin {
//      ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#
//      documentation ```dart
//                  ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/SleepMixin#
    String name;
//  ^^^^^^ reference scip-dart pub dart:core 2.18.0 lib/core/string.dart/String#
//         ^^^^ definition scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#name.
//         documentation ```dart
    AnimalType type;
//  ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/AnimalType#
//             ^^^^ definition scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#type.
//             documentation ```dart
    SoundMaker? soundMaker;
//  ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/SoundMaker#
//              ^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#soundMaker.
//              documentation ```dart
  
    Animal(this.name, this.type) {
//  ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#<constructor>().
//  documentation ```dart
//  ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#
      switch (type) {
//            ^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#type.
        case AnimalType.cat:
//           ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/AnimalType#
//                      ^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/AnimalType#cat.
          soundMaker = () => print('Meow!');
//                           ^^^^^ reference scip-dart pub dart:core 2.18.0 lib/core/print.dart/print().
          break;
        case AnimalType.dog:
//           ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/AnimalType#
//                      ^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/AnimalType#dog.
          soundMaker = () => print('Woof!');
//                           ^^^^^ reference scip-dart pub dart:core 2.18.0 lib/core/print.dart/print().
          break;
        case AnimalType.bird:
//           ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/AnimalType#
//                      ^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/AnimalType#bird.
          soundMaker = () => print('Chirp!');
//                           ^^^^^ reference scip-dart pub dart:core 2.18.0 lib/core/print.dart/print().
          break;
        default:
          soundMaker = () => print('Unknown animal type');
//                           ^^^^^ reference scip-dart pub dart:core 2.18.0 lib/core/print.dart/print().
      }
    }
  
    void makeSound() {
//       ^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#makeSound().
//       documentation ```dart
      soundMaker?.call();
//    ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#soundMaker.
    }
  
    @override
//   ^^^^^^^^ reference scip-dart pub dart:core 2.18.0 lib/core/annotations.dart/override.
    String toString() {
//  ^^^^^^ reference scip-dart pub dart:core 2.18.0 lib/core/string.dart/String#
//         ^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#toString().
//         documentation ```dart
      return '$name the $type';
//             ^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#name.
//                       ^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#type.
    }
  }
  
  int calculateSum(List<int> numbers) {
//^^^ reference scip-dart pub dart:core 2.18.0 lib/core/int.dart/int#
//    ^^^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/more.dart/calculateSum().
//    documentation ```dart
//                 ^^^^ reference scip-dart pub dart:core 2.18.0 lib/core/list.dart/List#
//                      ^^^ reference scip-dart pub dart:core 2.18.0 lib/core/int.dart/int#
//                           ^^^^^^^ definition local 0
//                           documentation ```dart
    return numbers.reduce((value, element) => value + element);
//         ^^^^^^^ reference local 0
//                 ^^^^^^ reference scip-dart pub dart:core 2.18.0 lib/core/iterable.dart/Iterable#reduce().
//                         ^^^^^ definition local 1
//                         documentation ```dart
//                                ^^^^^^^ definition local 2
//                                documentation ```dart
//                                            ^^^^^ reference local 1
//                                                    ^^^^^^^ reference local 2
  }
  
  void main() {
//     ^^^^ definition scip-dart pub dart_test 1.0.0 lib/more.dart/main().
//     documentation ```dart
    List<int> numbers = [1, 2, 3, 4, 5];
//  ^^^^ reference scip-dart pub dart:core 2.18.0 lib/core/list.dart/List#
//       ^^^ reference scip-dart pub dart:core 2.18.0 lib/core/int.dart/int#
//            ^^^^^^^ definition local 3
//            documentation ```dart
    int sum = calculateSum(numbers);
//  ^^^ reference scip-dart pub dart:core 2.18.0 lib/core/int.dart/int#
//      ^^^ definition local 4
//      documentation ```dart
//            ^^^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/calculateSum().
//                         ^^^^^^^ reference local 3
  
    Animal cat = Animal('Kitty', AnimalType.cat);
//  ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#
//         ^^^ definition local 5
//         documentation ```dart
//               ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#
//                               ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/AnimalType#
//                                          ^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/AnimalType#cat.
    Animal dog = Animal('Buddy', AnimalType.dog);
//  ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#
//         ^^^ definition local 6
//         documentation ```dart
//               ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#
//                               ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/AnimalType#
//                                          ^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/AnimalType#dog.
  
    cat.makeSound();
//  ^^^ reference local 5
//      ^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#makeSound().
    cat.sleep();
//  ^^^ reference local 5
//      ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/SleepMixin#sleep().
  
    dog.makeSound();
//  ^^^ reference local 6
//      ^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#makeSound().
    dog.sleep();
//  ^^^ reference local 6
//      ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/SleepMixin#sleep().
  
    print(cat);
//  ^^^^^ reference scip-dart pub dart:core 2.18.0 lib/core/print.dart/print().
//        ^^^ reference local 5
    print(dog);
//  ^^^^^ reference scip-dart pub dart:core 2.18.0 lib/core/print.dart/print().
//        ^^^ reference local 6
    print('The sum of $numbers is $sum');
//  ^^^^^ reference scip-dart pub dart:core 2.18.0 lib/core/print.dart/print().
//                     ^^^^^^^ reference local 3
//                                 ^^^ reference local 4
  }
