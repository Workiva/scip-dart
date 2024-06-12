  import 'dart:math' as math;
// definition scip-dart pub dart_test 1.0.0 lib/nested/`directives.dart`/
//       ^^^^^^^^^^^ reference scip-dart pub dart:math 2.18.0 pub dart_test 1.0.0 package:dart_test/nested/`directives.dart`/
//                      ^^^^ definition scip-dart pub dart_test 1.0.0 lib/nested/`directives.dart`/math.
  import 'dart:collection';
//       ^^^^^^^^^^^^^^^^^ reference scip-dart pub dart:collection 2.18.0 pub dart_test 1.0.0 package:dart_test/nested/`directives.dart`/
  import 'package:dart_test/main.dart';
//       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`main.dart`/
  import 'package:test/fake.dart';
//       ^^^^^^^^^^^^^^^^^^^^^^^^ reference scip-dart pub test 1.24.3 lib/`fake.dart`/
  import '../other.dart';
//       ^^^^^^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`other.dart`/
  export '../relationships.dart';
//       ^^^^^^^^^^^^^^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/`relationships.dart`/
  part 'directives_part.dart';
//     ^^^^^^^^^^^^^^^^^^^^^^ reference scip-dart pub dart_test 1.0.0 lib/nested/`directives_part.dart`/
