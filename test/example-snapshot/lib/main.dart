  import 'package:dart_test/other.dart';
  
  class _Bar {
//      ^^^^ definition local 0
  
  }
  
  void doo(_Bar er) {
//     ^^^ definition scip-dart pub dart_test 1.0.0 lib/main.dart/doo().
//         ^^^^ reference local 0
    goo();
//  ^^^ reference scip-dart pub dart_test 1.0.0 lib/other.dart/goo().
    final foo = 'asdf';
//        ^^^ definition local 1
    print(foo);
//  ^^^^^ reference scip-dart pub dart:core 2.18.0 lib/core/print.dart/print().
//        ^^^ reference local 1
  }
