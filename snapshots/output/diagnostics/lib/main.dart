  import 'dart:collection'; // unused import
// definition scip-dart pub dart_test_diagnostics 1.0.0 lib/`main.dart`/
  
  class _UnusedClass {}
//      ^^^^^^^^^^^^ definition local 0
//      documentation
//      > ```dart
//      > class _UnusedClass
//      > ```
//      diagnostic Information:
//      > The declaration '_UnusedClass' isn't referenced.
  
  void _unusedMethod() {}
//     ^^^^^^^^^^^^^ definition local 1
//     documentation
//     > ```dart
//     > void _unusedMethod()
//     > ```
//     diagnostic Information:
//     > The declaration '_unusedMethod' isn't referenced.
  
  String _unusedTopLevelVariable = 'asdf';
//^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
//       ^^^^^^^^^^^^^^^^^^^^^^^ definition local 2
//       documentation
//       > ```dart
//       > String _unusedTopLevelVariable
//       > ```
//       diagnostic Information:
//       > The declaration '_unusedTopLevelVariable' isn't referenced.
  
  @Deprecated('This method is deprecated')
// ^^^^^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`annotations.dart`/Deprecated#
  void deprecatedMethod() {}
//     ^^^^^^^^^^^^^^^^ definition scip-dart pub dart_test_diagnostics 1.0.0 lib/`main.dart`/deprecatedMethod().
//     documentation
//     > ```dart
//     > void deprecatedMethod()
//     > ```
  
  void deprecatedParam({
//     ^^^^^^^^^^^^^^^ definition scip-dart pub dart_test_diagnostics 1.0.0 lib/`main.dart`/deprecatedParam().
//     documentation
//     > ```dart
//     > void deprecatedParam({dynamic foobar})
//     > ```
    @Deprecated('this param is deprecated') dynamic foobar
//   ^^^^^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`annotations.dart`/Deprecated#
//                                                  ^^^^^^ definition scip-dart pub dart_test_diagnostics 1.0.0 lib/`main.dart`/deprecatedParam().(foobar)
//                                                  documentation
//                                                  > ```dart
//                                                  > {dynamic foobar}
//                                                  > ```
  }) {}
  
  void main() {
//     ^^^^ definition scip-dart pub dart_test_diagnostics 1.0.0 lib/`main.dart`/main().
//     documentation
//     > ```dart
//     > void main()
//     > ```
    final unusedVariable = 'asdf';
//        ^^^^^^^^^^^^^^ definition local 3
//        documentation
//        > ```dart
//        > String unusedVariable
//        > ```
//        diagnostic Information:
//        > The value of the local variable 'unusedVariable' isn't used.
  
    String variableWithUnecssaryDeclaration = 'asdf';
//  ^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`string.dart`/String#
//         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ definition local 4
//         documentation
//         > ```dart
//         > String variableWithUnecssaryDeclaration
//         > ```
//         diagnostic Information:
//         > The value of the local variable 'variableWithUnecssaryDeclaration' isn't used.
  
    // dead_code example
    if (true) { } else {
      print('This condition is never met!');
//    ^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`print.dart`/print().
    }
  
    deprecatedMethod();
//  ^^^^^^^^^^^^^^^^ reference scip-dart pub dart_test_diagnostics 1.0.0 lib/`main.dart`/deprecatedMethod().
//  diagnostic Information:
//  > 'deprecatedMethod' is deprecated and shouldn't be used. This method is deprecated.
    deprecatedParam(foobar: 2);
//  ^^^^^^^^^^^^^^^ reference scip-dart pub dart_test_diagnostics 1.0.0 lib/`main.dart`/deprecatedParam().
//                  ^^^^^^ reference scip-dart pub dart_test_diagnostics 1.0.0 lib/`main.dart`/deprecatedParam().(foobar)
//                  diagnostic Information:
//                  > 'foobar' is deprecated and shouldn't be used. this param is deprecated.
  }
  
  @deprecated
// ^^^^^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`annotations.dart`/deprecated.
  void someDeprecatedFunc() {}
//     ^^^^^^^^^^^^^^^^^^ definition scip-dart pub dart_test_diagnostics 1.0.0 lib/`main.dart`/someDeprecatedFunc().
//     documentation
//     > ```dart
//     > void someDeprecatedFunc()
//     > ```
