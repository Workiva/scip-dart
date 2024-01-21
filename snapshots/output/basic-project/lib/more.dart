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
//    ^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/print.dart/print().
    }
  }
  
  class Animal with SleepMixin {
//      ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#
//      documentation ```dart
//      relationship scip-dart pub dart_test 1.0.0 lib/more.dart/SleepMixin# implementation
//                  ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/SleepMixin#
    String name;
//  ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/string.dart/String#
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
  
    Animal(this.name, {required this.type}) {
//  ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#<constructor>().
//  documentation ```dart
//  ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#
//              ^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#name.
//                                   ^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#type.
      switch (type) {
//            ^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#type.
        case AnimalType.cat:
//           ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/AnimalType#
//                      ^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/AnimalType#cat.
          soundMaker = () => print('Meow!');
//        ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#soundMaker.
//                           ^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/print.dart/print().
          break;
        case AnimalType.dog:
//           ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/AnimalType#
//                      ^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/AnimalType#dog.
          soundMaker = () => print('Woof!');
//        ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#soundMaker.
//                           ^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/print.dart/print().
          break;
        case AnimalType.bird:
//           ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/AnimalType#
//                      ^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/AnimalType#bird.
          soundMaker = () => print('Chirp!');
//        ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#soundMaker.
//                           ^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/print.dart/print().
          break;
        default:
          soundMaker = () => print('Unknown animal type');
//        ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#soundMaker.
//                           ^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/print.dart/print().
      }
    }
  
    void makeSound() {
//       ^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#makeSound().
//       documentation ```dart
      soundMaker?.call();
//    ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#soundMaker.
    }
  
    @override
//   ^^^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/annotations.dart/override.
    String toString() {
//  ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/string.dart/String#
//         ^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#toString().
//         documentation ```dart
//         relationship scip-dart pub dart:core 2.19.0 dart:core/object.dart/Object#toString(). implementation reference
      return '$name the $type';
//             ^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#name.
//                       ^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#type.
    }
  }
  
  int calculateSum(List<int> numbers) {
//^^^ reference scip-dart pub dart:core 2.19.0 dart:core/int.dart/int#
//    ^^^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/more.dart/calculateSum().
//    documentation ```dart
//                 ^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/list.dart/List#
//                      ^^^ reference scip-dart pub dart:core 2.19.0 dart:core/int.dart/int#
//                           ^^^^^^^ definition local 0
//                           documentation ```dart
    return numbers.reduce((value, element) => value + element);
//         ^^^^^^^ reference local 0
//                 ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/iterable.dart/Iterable#reduce().
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
//  ^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/list.dart/List#
//       ^^^ reference scip-dart pub dart:core 2.19.0 dart:core/int.dart/int#
//            ^^^^^^^ definition local 3
//            documentation ```dart
    int sum = calculateSum(numbers);
//  ^^^ reference scip-dart pub dart:core 2.19.0 dart:core/int.dart/int#
//      ^^^ definition local 4
//      documentation ```dart
//            ^^^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/calculateSum().
//                         ^^^^^^^ reference local 3
  
    Animal cat = Animal('Kitty', type: AnimalType.cat);
//  ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#
//         ^^^ definition local 5
//         documentation ```dart
//               ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#
//                               ^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#<constructor>().(type)
//                                     ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/AnimalType#
//                                                ^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/AnimalType#cat.
    Animal dog = Animal('Buddy', type: AnimalType.dog);
//  ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#
//         ^^^ definition local 6
//         documentation ```dart
//               ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#
//                               ^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/Animal#<constructor>().(type)
//                                     ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/AnimalType#
//                                                ^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/AnimalType#dog.
  
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
//  ^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/print.dart/print().
//        ^^^ reference local 5
    print(dog);
//  ^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/print.dart/print().
//        ^^^ reference local 6
    print('The sum of $numbers is $sum');
//  ^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/print.dart/print().
//                     ^^^^^^^ reference local 3
//                                 ^^^ reference local 4
  
    print(math.Rectangle(1,2,3,4));
//  ^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/print.dart/print().
//        ^^^^ reference scip-dart pub dart_test 1.0.0 lib/more.dart/math.
//             ^^^^^^^^^ reference scip-dart pub dart:math 2.19.0 dart:math/rectangle.dart/Rectangle#
  
    [1,2].reduce((a, b) => a + b);
//        ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/iterable.dart/Iterable#reduce().
//                ^ definition local 7
//                documentation ```dart
//                   ^ definition local 8
//                   documentation ```dart
//                         ^ reference local 7
//                             ^ reference local 8
  }
  
  void test(String Function(int) p) {}
//     ^^^^ definition scip-dart pub dart_test 1.0.0 lib/more.dart/test().
//     documentation ```dart
//          ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/string.dart/String#
//                          ^^^ reference scip-dart pub dart:core 2.19.0 dart:core/int.dart/int#
//                               ^ definition local 9
//                               documentation ```dart
  void deepTest(String Function(void Function(String test)) p) {}
//     ^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/more.dart/deepTest().
//     documentation ```dart
//              ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/string.dart/String#
//                                            ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/string.dart/String#
//                                                          ^ definition local 10
//                                                          documentation ```dart
