  import 'dart:math' as math;
// definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/
//                      ^^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/math.
//                      documentation
//                      > ```dart
//                      > as math
//                      > ```
  
  enum AnimalType {
//     ^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/AnimalType#
//     documentation
//     > ```dart
//     > enum AnimalType
//     > ```
    cat,
//  ^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/AnimalType#cat.
//  documentation
//  > ```dart
//  > AnimalType cat
//  > ```
    dog,
//  ^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/AnimalType#dog.
//  documentation
//  > ```dart
//  > AnimalType dog
//  > ```
    bird,
//  ^^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/AnimalType#bird.
//  documentation
//  > ```dart
//  > AnimalType bird
//  > ```
  }
  
  typedef SoundMaker = void Function();
//        ^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/SoundMaker#
//        documentation
//        > ```dart
//        > typedef SoundMaker = void Function()
//        > ```
  
  mixin SleepMixin {
//      ^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/SleepMixin#
//      documentation
//      > ```dart
//      > mixin SleepMixin on Object
//      > ```
    void sleep() {
//       ^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/SleepMixin#sleep().
//       documentation
//       > ```dart
//       > void sleep()
//       > ```
      print('zzz...');
//    ^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`print.dart`/print().
    }
  }
  
  class Animal with SleepMixin {
//      ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#
//      documentation
//      > ```dart
//      > class Animal with SleepMixin
//      > ```
//      relationship scip-dart pub dart_test 1.0.0 lib/`more.dart`/SleepMixin# implementation
//                  ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/SleepMixin#
    String name;
//  ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
//         ^^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#name.
//         documentation
//         > ```dart
//         > String name
//         > ```
    AnimalType type;
//  ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/AnimalType#
//             ^^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#type.
//             documentation
//             > ```dart
//             > AnimalType type
//             > ```
    SoundMaker? soundMaker;
//  ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/SoundMaker#
//              ^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#soundMaker.
//              documentation
//              > ```dart
//              > void Function() soundMaker
//              > ```
  
    Animal(this.name, {required this.type}) {
//  ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#`<constructor>`().
//  documentation
//  > ```dart
//  > Animal Animal(String name, {required AnimalType type})
//  > ```
//  ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#
//         ^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#name.
//              ^^^^ definition local 0
//              documentation
//              > ```dart
//              > String name
//              > ```
//                              ^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#type.
//                                   ^^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#`<constructor>`().(type)
//                                   documentation
//                                   > ```dart
//                                   > {required AnimalType type}
//                                   > ```
      switch (type) {
//            ^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#type.
        case AnimalType.cat:
//           ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/AnimalType#
//                      ^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/AnimalType#cat.
          soundMaker = () => print('Meow!');
//        ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#soundMaker.
//                           ^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`print.dart`/print().
          break;
        case AnimalType.dog:
//           ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/AnimalType#
//                      ^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/AnimalType#dog.
          soundMaker = () => print('Woof!');
//        ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#soundMaker.
//                           ^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`print.dart`/print().
          break;
        case AnimalType.bird:
//           ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/AnimalType#
//                      ^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/AnimalType#bird.
          soundMaker = () => print('Chirp!');
//        ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#soundMaker.
//                           ^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`print.dart`/print().
          break;
        default:
          soundMaker = () => print('Unknown animal type');
//        ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#soundMaker.
//                           ^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`print.dart`/print().
      }
    }
  
    void makeSound() {
//       ^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#makeSound().
//       documentation
//       > ```dart
//       > void makeSound()
//       > ```
      soundMaker?.call();
//    ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#soundMaker.
    }
  
    @override
//   ^^^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`annotations.dart`/override.
    String toString() {
//  ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
//         ^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#toString().
//         documentation
//         > ```dart
//         > String toString()
//         > ```
//         relationship scip-dart pub dart:core 2.19.0 dart:core/`object.dart`/Object#toString(). implementation reference
      return '$name the $type';
//             ^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#name.
//                       ^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#type.
    }
  }
  
  int calculateSum(List<int> numbers) {
//^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`int.dart`/int#
//    ^^^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/calculateSum().
//    documentation
//    > ```dart
//    > int calculateSum(List<int> numbers)
//    > ```
//                 ^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`list.dart`/List#
//                      ^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`int.dart`/int#
//                           ^^^^^^^ definition local 1
//                           documentation
//                           > ```dart
//                           > List<int> numbers
//                           > ```
    return numbers.reduce((value, element) => value + element);
//         ^^^^^^^ reference local 1
//                 ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`iterable.dart`/Iterable#reduce().
//                         ^^^^^ definition local 2
//                         documentation
//                         > ```dart
//                         > int value
//                         > ```
//                                ^^^^^^^ definition local 3
//                                documentation
//                                > ```dart
//                                > int element
//                                > ```
//                                            ^^^^^ reference local 2
//                                                    ^^^^^^^ reference local 3
  }
  
  void main() {
//     ^^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/main().
//     documentation
//     > ```dart
//     > void main()
//     > ```
    List<int> numbers = [1, 2, 3, 4, 5];
//  ^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`list.dart`/List#
//       ^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`int.dart`/int#
//            ^^^^^^^ definition local 4
//            documentation
//            > ```dart
//            > List<int> numbers
//            > ```
    int sum = calculateSum(numbers);
//  ^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`int.dart`/int#
//      ^^^ definition local 5
//      documentation
//      > ```dart
//      > int sum
//      > ```
//            ^^^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/calculateSum().
//                         ^^^^^^^ reference local 4
  
    Animal cat = Animal('Kitty', type: AnimalType.cat);
//  ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#
//         ^^^ definition local 6
//         documentation
//         > ```dart
//         > Animal cat
//         > ```
//               ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#
//                               ^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#`<constructor>`().(type)
//                                     ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/AnimalType#
//                                                ^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/AnimalType#cat.
    Animal dog = Animal('Buddy', type: AnimalType.dog);
//  ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#
//         ^^^ definition local 7
//         documentation
//         > ```dart
//         > Animal dog
//         > ```
//               ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#
//                               ^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#`<constructor>`().(type)
//                                     ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/AnimalType#
//                                                ^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/AnimalType#dog.
  
    cat.makeSound();
//  ^^^ reference local 6
//      ^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#makeSound().
    cat.sleep();
//  ^^^ reference local 6
//      ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/SleepMixin#sleep().
  
    dog.makeSound();
//  ^^^ reference local 7
//      ^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#makeSound().
    dog.sleep();
//  ^^^ reference local 7
//      ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/SleepMixin#sleep().
  
    print(cat);
//  ^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`print.dart`/print().
//        ^^^ reference local 6
    print(dog);
//  ^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`print.dart`/print().
//        ^^^ reference local 7
    print('The sum of $numbers is $sum');
//  ^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`print.dart`/print().
//                     ^^^^^^^ reference local 4
//                                 ^^^ reference local 5
  
    print(math.Rectangle(1,2,3,4));
//  ^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`print.dart`/print().
//        ^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/math.
//             ^^^^^^^^^ reference scip-dart pub dart:math 2.19.0 dart:math/`rectangle.dart`/Rectangle#
  
    [1,2].reduce((a, b) => a + b);
//        ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`iterable.dart`/Iterable#reduce().
//                ^ definition local 8
//                documentation
//                > ```dart
//                > int a
//                > ```
//                   ^ definition local 9
//                   documentation
//                   > ```dart
//                   > int b
//                   > ```
//                         ^ reference local 8
//                             ^ reference local 9
  }
  
  void test(String Function(int) p) {}
//     ^^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/test().
//     documentation
//     > ```dart
//     > void test(String Function(int) p)
//     > ```
//          ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
//                          ^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`int.dart`/int#
//                               ^ definition local 10
//                               documentation
//                               > ```dart
//                               > String Function(int) p
//                               > ```
  void deepTest(String Function(void Function(String test)) p) {}
//     ^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/deepTest().
//     documentation
//     > ```dart
//     > void deepTest(String Function(void Function(String)) p)
//     > ```
//              ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
//                                            ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
//                                                          ^ definition local 11
//                                                          documentation
//                                                          > ```dart
//                                                          > String Function(void Function(String)) p
//                                                          > ```
