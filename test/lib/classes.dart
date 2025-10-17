class AClass {}
class BClass {}
class CClass<T> {}

mixin AMixin on AClass {}
//    ^^^^^^ definition scip-dart pub scip_dart_test . lib/`classes.dart`/AMixin#
//              ^^^^^^ reference scip-dart pub scip_dart_test . lib/`classes.dart`/AClass#

class ComplexClass<T> 
//    ^^^^^^^^^^^^ definition scip-dart pub scip_dart_test . lib/`classes.dart`/ComplexClass#
//                 ^ definition scip-dart pub scip_dart_test 1.0.0 lib/`classes.dart`/T#
  extends AClass 
//        ^^^^^^ reference scip-dart pub scip_dart_test . lib/`classes.dart`/AClass#
  with AMixin 
//     ^^^^^^ reference scip-dart pub scip_dart_test . lib/`classes.dart`/AMixin#
  implements CClass<int>, BClass {}
//           ^^^^^^ reference scip-dart pub scip_dart_test . lib/`classes.dart`/CClass#
//                  ^^^ reference scip-dart pub dart:core . dart:core/`int.dart`/int#
//                        ^^^^^^ reference scip-dart pub scip_dart_test . lib/`classes.dart`/BClass#

void fn(ComplexClass c) {}
//      ^^^^^^^^^^^^ reference scip-dart pub scip_dart_test . lib/`classes.dart`/ComplexClass# 