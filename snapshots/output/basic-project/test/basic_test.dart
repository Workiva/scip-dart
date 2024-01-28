  import 'package:test/test.dart';
// definition scip-dart pub dart_test 1.0.0 test/`basic_test.dart`/
  
  void main() {
//     ^^^^ definition scip-dart pub dart_test 1.0.0 test/`basic_test.dart`/main().
//     documentation
//     > ```dart
//     > void main()
//     > ```
    group('some test', () {
//  ^^^^^ reference scip-dart pub test_core 0.5.3 lib/`scaffolding.dart`/group().
      test('equality', () {
//    ^^^^ reference scip-dart pub test_core 0.5.3 lib/`scaffolding.dart`/test().
        expect(1, 1);
//      ^^^^^^ reference scip-dart pub matcher 0.12.16 lib/src/expect/`expect.dart`/expect().
      });
    });
  }
