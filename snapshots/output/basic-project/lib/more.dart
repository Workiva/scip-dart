  import 'dart:math' as math;
// definition scip-dart pub dart_test 1.0.0 lib/more.dart/
//                      ^^^^ definition scip-dart pub dart_test 1.0.0 lib/more.dart/math.
//                      documentation ```dart
  
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
//    ^^^^^ reference scip-dart pub dart:core 3.1.0 dart:core/print.dart/print().
    }
  }
  
  class Animal with SleepMixin {
//      ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#
//      documentation ```dart
    String name;
//         ^^^^ definition scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#name.
//         documentation ```dart
    AnimalType type;
//             ^^^^ definition scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#type.
//             documentation ```dart
    SoundMaker? soundMaker;
//              ^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#soundMaker.
//              documentation ```dart
  
    Animal(this.name, {required this.type}) {
//  ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#<constructor>().
//  documentation ```dart
//  ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#
//         ^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#name.
//              ^^^^ definition local 0
//              documentation ```dart
//                              ^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#type.
//                                   ^^^^ definition scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#<constructor>().(type)
//                                   documentation ```dart
      switch (type) {
//            ^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#type.
        case AnimalType.cat:
//           ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/AnimalType#
//                      ^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/AnimalType#cat.
          soundMaker = () => print('Meow!');
//        ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#soundMaker.
//                           ^^^^^ reference scip-dart pub dart:core 3.1.0 dart:core/print.dart/print().
          break;
        case AnimalType.dog:
//           ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/AnimalType#
//                      ^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/AnimalType#dog.
          soundMaker = () => print('Woof!');
//        ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#soundMaker.
//                           ^^^^^ reference scip-dart pub dart:core 3.1.0 dart:core/print.dart/print().
          break;
        case AnimalType.bird:
//           ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/AnimalType#
//                      ^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/AnimalType#bird.
          soundMaker = () => print('Chirp!');
//        ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#soundMaker.
//                           ^^^^^ reference scip-dart pub dart:core 3.1.0 dart:core/print.dart/print().
          break;
        default:
          soundMaker = () => print('Unknown animal type');
//        ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#soundMaker.
//                           ^^^^^ reference scip-dart pub dart:core 3.1.0 dart:core/print.dart/print().
      }
    }
  
    void makeSound() {
//       ^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#makeSound().
//       documentation ```dart
      soundMaker?.call();
//    ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#soundMaker.
    }
  
    @override
//   ^^^^^^^^ reference scip-dart pub dart:core 3.1.0 dart:core/annotations.dart/override.
    String toString() {
//         ^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#toString().
//         documentation ```dart
      return '$name the $type';
//             ^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#name.
//                       ^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#type.
    }
  }
  
  int calculateSum(List<int> numbers) {
//    ^^^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/more.dart/calculateSum().
//    documentation ```dart
//                           ^^^^^^^ definition local 1
//                           documentation ```dart
    return numbers.reduce((value, element) => value + element);
//         ^^^^^^^ reference local 1
//                 ^^^^^^ reference scip-dart pub dart:core 3.1.0 dart:core/iterable.dart/Iterable#reduce().
//                         ^^^^^ definition local 2
//                         documentation ```dart
//                                ^^^^^^^ definition local 3
//                                documentation ```dart
//                                            ^^^^^ reference local 2
//                                                    ^^^^^^^ reference local 3
  }
  
  void main() {
//     ^^^^ definition scip-dart pub dart_test 1.0.0 lib/more.dart/main().
//     documentation ```dart
    List<int> numbers = [1, 2, 3, 4, 5];
//            ^^^^^^^ definition local 4
//            documentation ```dart
    int sum = calculateSum(numbers);
//      ^^^ definition local 5
//      documentation ```dart
//            ^^^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/calculateSum().
//                         ^^^^^^^ reference local 4
  
    Animal cat = Animal('Kitty', type: AnimalType.cat);
//         ^^^ definition local 6
//         documentation ```dart
//                               ^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#<constructor>().(type)
//                                     ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/AnimalType#
//                                                ^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/AnimalType#cat.
    Animal dog = Animal('Buddy', type: AnimalType.dog);
//         ^^^ definition local 7
//         documentation ```dart
//                               ^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#<constructor>().(type)
//                                     ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/AnimalType#
//                                                ^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/AnimalType#dog.
  
    cat.makeSound();
//  ^^^ reference local 6
//      ^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#makeSound().
    cat.sleep();
//  ^^^ reference local 6
//      ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/SleepMixin#sleep().
  
    dog.makeSound();
//  ^^^ reference local 7
//      ^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#makeSound().
    dog.sleep();
//  ^^^ reference local 7
//      ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/SleepMixin#sleep().
  
    print(cat);
//  ^^^^^ reference scip-dart pub dart:core 3.1.0 dart:core/print.dart/print().
//        ^^^ reference local 6
    print(dog);
//  ^^^^^ reference scip-dart pub dart:core 3.1.0 dart:core/print.dart/print().
//        ^^^ reference local 7
    print('The sum of $numbers is $sum');
//  ^^^^^ reference scip-dart pub dart:core 3.1.0 dart:core/print.dart/print().
//                     ^^^^^^^ reference local 4
//                                 ^^^ reference local 5
  
    print(math.Rectangle(1,2,3,4));
//  ^^^^^ reference scip-dart pub dart:core 3.1.0 dart:core/print.dart/print().
  
    [1,2].reduce((a, b) => a + b);
//        ^^^^^^ reference scip-dart pub dart:core 3.1.0 dart:core/iterable.dart/Iterable#reduce().
//                ^ definition local 8
//                documentation ```dart
//                   ^ definition local 9
//                   documentation ```dart
//                         ^ reference local 8
//                             ^ reference local 9
  }
  
  void test(String Function(int) p) {}
//     ^^^^ definition scip-dart pub dart_test 1.0.0 lib/more.dart/test().
//     documentation ```dart
//                               ^ definition local 10
//                               documentation ```dart
  void deepTest(String Function(void Function(String test)) p) {}
//     ^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/more.dart/deepTest().
//     documentation ```dart
//                                                          ^ definition local 11
//                                                          documentation ```dart
