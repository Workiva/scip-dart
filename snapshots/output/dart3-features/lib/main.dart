  (String, int) userInfo(Map<String, dynamic> json) {
// definition scip-dart pub dart3_features 1.0.0 lib/main.dart/
// ^^^^^^ reference scip-dart pub dart:core 3.1.0 dart:core/string.dart/String#
//         ^^^ reference scip-dart pub dart:core 3.1.0 dart:core/int.dart/int#
//              ^^^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/main.dart/userInfo().
//              documentation ```dart
//                       ^^^ reference scip-dart pub dart:core 3.1.0 dart:core/map.dart/Map#
//                           ^^^^^^ reference scip-dart pub dart:core 3.1.0 dart:core/string.dart/String#
//                                            ^^^^ definition local 0
//                                            documentation ```dart
    return (json['name'] as String, json['height'] as int);
//          ^^^^ reference local 0
//                          ^^^^^^ reference scip-dart pub dart:core 3.1.0 dart:core/string.dart/String#
//                                  ^^^^ reference local 0
//                                                    ^^^ reference scip-dart pub dart:core 3.1.0 dart:core/int.dart/int#
  }
  
  void parser(int charCode) {
//     ^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/main.dart/parser().
//     documentation ```dart
//            ^^^ reference scip-dart pub dart:core 3.1.0 dart:core/int.dart/int#
//                ^^^^^^^^ definition local 1
//                documentation ```dart
    const slash = 1;
//        ^^^^^ definition local 2
//        documentation ```dart
    const star = 2;
//        ^^^^ definition local 3
//        documentation ```dart
    const plus = 3;
//        ^^^^ definition local 4
//        documentation ```dart
    const minus = 4;
//        ^^^^^ definition local 5
//        documentation ```dart
  
    final nextCharCode = 'a';
//        ^^^^^^^^^^^^ definition local 6
//        documentation ```dart
    const digit0 = 0;
//        ^^^^^^ definition local 7
//        documentation ```dart
    const digit9 = 9;
//        ^^^^^^ definition local 8
//        documentation ```dart
  
    void skipComment() {}
//       ^^^^^^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/main.dart/skipComment().
//       documentation ```dart
    void operatorFn(int charCode) {}
//       ^^^^^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/main.dart/operatorFn().
//       documentation ```dart
//                  ^^^ reference scip-dart pub dart:core 3.1.0 dart:core/int.dart/int#
//                      ^^^^^^^^ definition local 9
//                      documentation ```dart
    void number() {}
//       ^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/main.dart/number().
//       documentation ```dart
    void invalid() {}
//       ^^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/main.dart/invalid().
//       documentation ```dart
  
    switch (charCode) {
//          ^^^^^^^^ reference local 1
      case slash when nextCharCode == slash:
//         ^^^^^ reference local 2
//                    ^^^^^^^^^^^^ reference local 6
//                                    ^^^^^ reference local 2
        skipComment();
//      ^^^^^^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/main.dart/skipComment().
  
      case slash || star || plus || minus:
//         ^^^^^ reference local 2
//                  ^^^^ reference local 3
//                          ^^^^ reference local 4
//                                  ^^^^^ reference local 5
        operatorFn(charCode);
//      ^^^^^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/main.dart/operatorFn().
//                 ^^^^^^^^ reference local 1
  
      case >= digit0 && <= digit9:
//            ^^^^^^ reference local 7
//                         ^^^^^^ reference local 8
        number();
//      ^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/main.dart/number().
  
      default:
        invalid();
//      ^^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/main.dart/invalid().
    }
  }
  
  const six = 6;
//      ^^^ definition scip-dart pub dart3_features 1.0.0 lib/main.dart/six.
//      documentation ```dart
  const msg = 'Feeling the Monday blues?';
//      ^^^ definition scip-dart pub dart3_features 1.0.0 lib/main.dart/msg.
//      documentation ```dart
  String describeDate(DateTime dt) {
//^^^^^^ reference scip-dart pub dart:core 3.1.0 dart:core/string.dart/String#
//       ^^^^^^^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/main.dart/describeDate().
//       documentation ```dart
//                    ^^^^^^^^ reference scip-dart pub dart:core 3.1.0 dart:core/date_time.dart/DateTime#
//                             ^^ definition local 10
//                             documentation ```dart
    const one = 1;
//        ^^^ definition local 11
//        documentation ```dart
    return switch (dt.weekday) {
//                 ^^ reference local 10
//                    ^^^^^^^ reference scip-dart pub dart:core 3.1.0 dart:core/date_time.dart/DateTime#weekday.
      one => 'Feeling the Monday blues?',
//    ^^^ reference local 11
      7 || six => 'Enjoy the weekend!',
//         ^^^ reference scip-dart pub dart3_features 1.0.0 lib/main.dart/six.
      _ => 'Hang in there.'
    };
  }
  
  void main() {
//     ^^^^ definition scip-dart pub dart3_features 1.0.0 lib/main.dart/main().
//     documentation ```dart
    var (
      String name,
//    ^^^^^^ reference scip-dart pub dart:core 3.1.0 dart:core/string.dart/String#
//           ^^^^ definition local 12
//           documentation ```dart
      int height,
//    ^^^ reference scip-dart pub dart:core 3.1.0 dart:core/int.dart/int#
//        ^^^^^^ definition local 13
//        documentation ```dart
    ) = userInfo({'name': 'Michael', 'height': 180});
//      ^^^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/main.dart/userInfo().
    print('User $name is $height cm tall.');
//  ^^^^^ reference scip-dart pub dart:core 3.1.0 dart:core/print.dart/print().
//               ^^^^ reference local 12
//                        ^^^^^^ reference local 13
  
    final json = {'name': 'Michael', 'height': 180};
//        ^^^^ definition local 14
//        documentation ```dart
    if (json case {'name': 'Michael', 'height': int h}) {
//      ^^^^ reference local 14
//                                              ^^^ reference scip-dart pub dart:core 3.1.0 dart:core/int.dart/int#
//                                                  ^ definition local 15
//                                                  documentation ```dart
      print('Michael is $h cm tall.');
//    ^^^^^ reference scip-dart pub dart:core 3.1.0 dart:core/print.dart/print().
//                       ^ reference local 15
    }
  }
  
  base class Foo {}
//           ^^^ definition scip-dart pub dart3_features 1.0.0 lib/main.dart/Foo#
//           documentation ```dart
  
  final class Bar {}
//            ^^^ definition scip-dart pub dart3_features 1.0.0 lib/main.dart/Bar#
//            documentation ```dart
  
  interface class Car {}
//                ^^^ definition scip-dart pub dart3_features 1.0.0 lib/main.dart/Car#
//                documentation ```dart
  
  sealed class Zar {}
//             ^^^ definition scip-dart pub dart3_features 1.0.0 lib/main.dart/Zar#
//             documentation ```dart
  
