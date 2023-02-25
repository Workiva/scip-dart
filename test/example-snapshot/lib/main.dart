  import 'package:dart_test/other.dart';
// definition scip-dart pub dart_test 1.0.0 lib/main.dart/
// reference scip-dart pub dart_test 1.0.0 lib/main.dart/
  
  void main() {
//     ^^^^ definition scip-dart pub dart_test 1.0.0 lib/main.dart/main().
//     documentation ```dart
    print(foo);
//  ^^^^^ reference scip-dart pub dart:core 2.18.0 lib/core/print.dart/print().
//        ^^^ reference scip-dart pub dart_test 1.0.0 lib/other.dart/foo.
  }
