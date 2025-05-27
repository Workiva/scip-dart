  import 'dart:collection'; // unused import
// definition scip-dart pub dart_test_diagnostics 1.0.0 lib/`main.dart`/
  
  class _UnusedClass {}
//      ^^^^^^^^^^^^ definition local 0
//      diagnostic Information:
//      > The declaration '_UnusedClass' isn't referenced.
  
  void _unusedMethod() {}
//     ^^^^^^^^^^^^^ definition local 1
//     diagnostic Information:
//     > The declaration '_unusedMethod' isn't referenced.
  
  final _unusedTopLevelVariable = 'asdf';
//      ^^^^^^^^^^^^^^^^^^^^^^^ definition local 2
//      diagnostic Information:
//      > The declaration '_unusedTopLevelVariable' isn't referenced.
  
  @Deprecated('This method is deprecated')
// ^^^^^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`annotations.dart`/Deprecated#
  void deprecatedMethod() {}
//     ^^^^^^^^^^^^^^^^ definition scip-dart pub dart_test_diagnostics 1.0.0 lib/`main.dart`/deprecatedMethod().
  
  void deprecatedParam({
//     ^^^^^^^^^^^^^^^ definition scip-dart pub dart_test_diagnostics 1.0.0 lib/`main.dart`/deprecatedParam().
    @Deprecated('this param is deprecated') dynamic foobar
//   ^^^^^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`annotations.dart`/Deprecated#
//                                                  ^^^^^^ definition scip-dart pub dart_test_diagnostics 1.0.0 lib/`main.dart`/deprecatedParam().(foobar)
  }) {}
  
  void main() {
//     ^^^^ definition scip-dart pub dart_test_diagnostics 1.0.0 lib/`main.dart`/main().
    final unusedVariable = 'asdf';
//        ^^^^^^^^^^^^^^ definition local 3
//        diagnostic Warning:
//        > The value of the local variable 'unusedVariable' isn't used.
  
    final variableWithUnnecessaryDeclaration = 'asdf';
//        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ definition local 4
//        diagnostic Warning:
//        > The value of the local variable 'variableWithUnnecessaryDeclaration' isn't used.
  
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
    someDeprecatedFunc();
//  ^^^^^^^^^^^^^^^^^^ reference scip-dart pub dart_test_diagnostics 1.0.0 lib/`main.dart`/someDeprecatedFunc().
//  diagnostic Information:
//  > 'someDeprecatedFunc' is deprecated and shouldn't be used.
  }
  
  @deprecated
// ^^^^^^^^^^ reference scip-dart pub dart:core 2.19.0 dart:core/`annotations.dart`/deprecated.
  void someDeprecatedFunc() {}
//     ^^^^^^^^^^^^^^^^^^ definition scip-dart pub dart_test_diagnostics 1.0.0 lib/`main.dart`/someDeprecatedFunc().
