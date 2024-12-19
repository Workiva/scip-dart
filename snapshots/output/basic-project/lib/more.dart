  import 'dart:math' as math;
// definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/
//                      ^^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/math.
  
  enum AnimalType {
//     ^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/AnimalType#
    cat,
//  ^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/AnimalType#cat.
    dog,
//  ^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/AnimalType#dog.
    bird,
//  ^^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/AnimalType#bird.
  }
  
  typedef SoundMaker = void Function();
//        ^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/SoundMaker#
  
  mixin SleepMixin {
//      ^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/SleepMixin#
    void sleep() {
//       ^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/SleepMixin#sleep().
      print('zzz...');
//    ^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`print.dart`/print().
    }
  }
  
  class Animal with SleepMixin {
//      ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#
//      relationship scip-dart pub dart_test 1.0.0 lib/`more.dart`/SleepMixin# implementation
//                  ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/SleepMixin#
    String name;
//  ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
//         ^^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#name.
    AnimalType type;
//  ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/AnimalType#
//             ^^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#type.
    SoundMaker? soundMaker;
//  ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/SoundMaker#
//              ^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#soundMaker.
  
    Animal(this.name, {required this.type}) {
//  ^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#`<constructor>`().
//              ^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#name.
//                                   ^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#type.
//                                   ^^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#`<constructor>`().(type)
      print(AnimalType.values);
//    ^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`print.dart`/print().
//          ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/AnimalType#
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
  
    factory Animal.cat() => Animal('Timmy', type: AnimalType.cat);
//                 ^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#cat().
//                          ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#`<constructor>`().
//                                          ^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#`<constructor>`().(type)
//                                                ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/AnimalType#
//                                                           ^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/AnimalType#cat.
  
    void makeSound() {
//       ^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#makeSound().
      soundMaker?.call();
//    ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#soundMaker.
    }
  
    @override
//   ^^^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`annotations.dart`/override.
    String toString() {
//  ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
//         ^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#toString().
//         relationship scip-dart pub dart:core 2.19.0 dart:core/`object.dart`/Object#toString(). implementation reference
      return '$name the $type';
//             ^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#name.
//                       ^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#type.
    }
  }
  
  int calculateSum(List<int> numbers) {
//^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`int.dart`/int#
//    ^^^^^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/calculateSum().
//                 ^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`list.dart`/List#
//                      ^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`int.dart`/int#
//                           ^^^^^^^ definition local 0
    return numbers.reduce((value, element) => value + element);
//         ^^^^^^^ reference local 0
//                 ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`iterable.dart`/Iterable#reduce().
//                         ^^^^^ definition local 1
//                                ^^^^^^^ definition local 2
//                                            ^^^^^ reference local 1
//                                                    ^^^^^^^ reference local 2
  }
  
  void main() {
//     ^^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/main().
    List<int> numbers = [1, 2, 3, 4, 5];
//  ^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`list.dart`/List#
//       ^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`int.dart`/int#
//            ^^^^^^^ definition local 3
    int sum = calculateSum(numbers);
//  ^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`int.dart`/int#
//      ^^^ definition local 4
//            ^^^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/calculateSum().
//                         ^^^^^^^ reference local 3
  
    Animal bird = Animal('Kitty', type: AnimalType.bird);
//  ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#
//         ^^^^ definition local 5
//                ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#`<constructor>`().
//                                ^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#`<constructor>`().(type)
//                                      ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/AnimalType#
//                                                 ^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/AnimalType#bird.
    Animal dog = Animal('Buddy', type: AnimalType.dog);
//  ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#
//         ^^^ definition local 6
//               ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#`<constructor>`().
//                               ^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#`<constructor>`().(type)
//                                     ^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/AnimalType#
//                                                ^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/AnimalType#dog.
    Animal cat = Animal.cat();
//  ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#
//         ^^^ definition local 7
//               ^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#cat().
//                      ^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#cat().
  
    bird.makeSound();
//  ^^^^ reference local 5
//       ^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#makeSound().
    bird.sleep();
//  ^^^^ reference local 5
//       ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/SleepMixin#sleep().
  
    dog.makeSound();
//  ^^^ reference local 6
//      ^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#makeSound().
    dog.sleep();
//  ^^^ reference local 6
//      ^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/SleepMixin#sleep().
  
    cat.makeSound();
//  ^^^ reference local 7
//      ^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/Animal#makeSound().
  
    print(bird);
//  ^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`print.dart`/print().
//        ^^^^ reference local 5
    print(dog);
//  ^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`print.dart`/print().
//        ^^^ reference local 6
    print('The sum of $numbers is $sum');
//  ^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`print.dart`/print().
//                     ^^^^^^^ reference local 3
//                                 ^^^ reference local 4
  
    print(math.Rectangle(1,2,3,4));
//  ^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`print.dart`/print().
//        ^^^^ reference scip-dart pub dart_test 1.0.0 lib/`more.dart`/math.
//             ^^^^^^^^^ reference scip-dart pub dart:math 2.19.0 dart:math/`rectangle.dart`/Rectangle#`<constructor>`().
  
    [1,2].reduce((a, b) => a + b);
//        ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`iterable.dart`/Iterable#reduce().
//                ^ definition local 8
//                   ^ definition local 9
//                         ^ reference local 8
//                             ^ reference local 9
  }
  
  void test(String Function(int) p) {}
//     ^^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/test().
//          ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
//                          ^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`int.dart`/int#
//                               ^ definition local 10
  void deepTest(String Function(void Function(String test)) p) {}
//     ^^^^^^^^ definition scip-dart pub dart_test 1.0.0 lib/`more.dart`/deepTest().
//              ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
//                                            ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
//                                                          ^ definition local 11
