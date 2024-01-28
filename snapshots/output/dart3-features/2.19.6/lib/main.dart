  (String, int) userInfo(Map<String, dynamic> json) {
// definition scip-dart pub dart3_features 1.0.0 lib/`main.dart`/
// ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
//         ^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`int.dart`/int#
//              ^^^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`main.dart`/userInfo().
//              documentation
//              > ```dart
//              > (String, int) userInfo(Map<String, dynamic> json)
//              > ```
//                       ^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`map.dart`/Map#
//                           ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
//                                            ^^^^ definition local 0
//                                            documentation
//                                            > ```dart
//                                            > Map<String, dynamic> json
//                                            > ```
    return (json['name'] as String, json['height'] as int);
//          ^^^^ reference local 0
//                          ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
//                                  ^^^^ reference local 0
//                                                    ^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`int.dart`/int#
  }
  
  void parser(int charCode) {
//     ^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`main.dart`/parser().
//     documentation
//     > ```dart
//     > void parser(int charCode)
//     > ```
//            ^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`int.dart`/int#
//                ^^^^^^^^ definition local 1
//                documentation
//                > ```dart
//                > int charCode
//                > ```
    const slash = 1;
//        ^^^^^ definition local 2
//        documentation
//        > ```dart
//        > int slash
//        > ```
    const star = 2;
//        ^^^^ definition local 3
//        documentation
//        > ```dart
//        > int star
//        > ```
    const plus = 3;
//        ^^^^ definition local 4
//        documentation
//        > ```dart
//        > int plus
//        > ```
    const minus = 4;
//        ^^^^^ definition local 5
//        documentation
//        > ```dart
//        > int minus
//        > ```
  
    final nextCharCode = 'a';
//        ^^^^^^^^^^^^ definition local 6
//        documentation
//        > ```dart
//        > String nextCharCode
//        > ```
    const digit0 = 0;
//        ^^^^^^ definition local 7
//        documentation
//        > ```dart
//        > int digit0
//        > ```
    const digit9 = 9;
//        ^^^^^^ definition local 8
//        documentation
//        > ```dart
//        > int digit9
//        > ```
  
    void skipComment() {}
//       ^^^^^^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`main.dart`/skipComment().
//       documentation
//       > ```dart
//       > void skipComment()
//       > ```
    void operatorFn(int charCode) {}
//       ^^^^^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`main.dart`/operatorFn().
//       documentation
//       > ```dart
//       > void operatorFn(int charCode)
//       > ```
//                  ^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`int.dart`/int#
//                      ^^^^^^^^ definition local 9
//                      documentation
//                      > ```dart
//                      > int charCode
//                      > ```
    void number() {}
//       ^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`main.dart`/number().
//       documentation
//       > ```dart
//       > void number()
//       > ```
    void invalid() {}
//       ^^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`main.dart`/invalid().
//       documentation
//       > ```dart
//       > void invalid()
//       > ```
  
    switch (charCode) {
//          ^^^^^^^^ reference local 1
      case slash when nextCharCode == slash:
//         ^^^^^ reference local 2
//                    ^^^^^^^^^^^^ reference local 6
//                                    ^^^^^ reference local 2
        skipComment();
//      ^^^^^^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`main.dart`/skipComment().
  
      case slash || star || plus || minus:
//         ^^^^^ reference local 2
//                  ^^^^ reference local 3
//                          ^^^^ reference local 4
//                                  ^^^^^ reference local 5
        operatorFn(charCode);
//      ^^^^^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`main.dart`/operatorFn().
//                 ^^^^^^^^ reference local 1
  
      case >= digit0 && <= digit9:
//            ^^^^^^ reference local 7
//                         ^^^^^^ reference local 8
        number();
//      ^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`main.dart`/number().
  
      default:
        invalid();
//      ^^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`main.dart`/invalid().
    }
  }
  
  const six = 6;
//      ^^^ definition scip-dart pub dart3_features 1.0.0 lib/`main.dart`/six.
//      documentation
//      > ```dart
//      > int six
//      > ```
  const msg = 'Feeling the Monday blues?';
//      ^^^ definition scip-dart pub dart3_features 1.0.0 lib/`main.dart`/msg.
//      documentation
//      > ```dart
//      > String msg
//      > ```
  String describeDate(DateTime dt) {
//^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
//       ^^^^^^^^^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`main.dart`/describeDate().
//       documentation
//       > ```dart
//       > String describeDate(DateTime dt)
//       > ```
//                    ^^^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`date_time.dart`/DateTime#
//                             ^^ definition local 10
//                             documentation
//                             > ```dart
//                             > DateTime dt
//                             > ```
    const one = 1;
//        ^^^ definition local 11
//        documentation
//        > ```dart
//        > int one
//        > ```
    return switch (dt.weekday) {
//                 ^^ reference local 10
//                    ^^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`date_time.dart`/DateTime#weekday.
      one => 'Feeling the Monday blues?',
//    ^^^ reference local 11
      7 || six => 'Enjoy the weekend!',
//         ^^^ reference scip-dart pub dart3_features 1.0.0 lib/`main.dart`/six.
      _ => 'Hang in there.'
    };
  }
  
  void main() {
//     ^^^^ definition scip-dart pub dart3_features 1.0.0 lib/`main.dart`/main().
//     documentation
//     > ```dart
//     > void main()
//     > ```
    var (
      String name,
//    ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
      int height,
//    ^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`int.dart`/int#
    ) = userInfo({'name': 'Michael', 'height': 180});
//      ^^^^^^^^ reference scip-dart pub dart3_features 1.0.0 lib/`main.dart`/userInfo().
    print('User $name is $height cm tall.');
//  ^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`print.dart`/print().
//               ^^^^ reference local 12
//                        ^^^^^^ reference local 13
  
    final json = {'name': 'Michael', 'height': 180};
//        ^^^^ definition local 14
//        documentation
//        > ```dart
//        > Map<String, Object> json
//        > ```
    if (json case {'name': 'Michael', 'height': int h}) {
//      ^^^^ reference local 14
//                                              ^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`int.dart`/int#
      print('Michael is $h cm tall.');
//    ^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`print.dart`/print().
//                       ^ reference local 15
    }
  }
  
  base class Foo {}
//           ^^^ definition scip-dart pub dart3_features 1.0.0 lib/`main.dart`/Foo#
//           documentation
//           > ```dart
//           > base class Foo
//           > ```
  
  final class Bar {}
//            ^^^ definition scip-dart pub dart3_features 1.0.0 lib/`main.dart`/Bar#
//            documentation
//            > ```dart
//            > final class Bar
//            > ```
  
  interface class Car {}
//                ^^^ definition scip-dart pub dart3_features 1.0.0 lib/`main.dart`/Car#
//                documentation
//                > ```dart
//                > interface class Car
//                > ```
  
  sealed class Zar {}
//             ^^^ definition scip-dart pub dart3_features 1.0.0 lib/`main.dart`/Zar#
//             documentation
//             > ```dart
//             > sealed class Zar
//             > ```
  
