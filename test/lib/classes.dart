class AClass {}
class BClass {}
class CClass {}

mixin AMixin on AClass {}
//    ^^^^^^ definition scip-dart pub scip_dart_test . lib/`classes.dart`/AMixin#
//              ^^^^^^ reference scip-dart pub scip_dart_test . lib/`classes.dart`/AClass#

class ComplexClass 
//    ^^^^^^^^^^^^ definition scip-dart pub scip_dart_test . lib/`classes.dart`/ComplexClass#
  extends AClass 
//        ^^^^^^ reference scip-dart pub scip_dart_test . lib/`classes.dart`/AClass#
  with AMixin 
//     ^^^^^^ reference scip-dart pub scip_dart_test . lib/`classes.dart`/AMixin#
  implements CClass, BClass {}
//           ^^^^^^ reference scip-dart pub scip_dart_test . lib/`classes.dart`/CClass#
//                   ^^^^^^ reference scip-dart pub scip_dart_test . lib/`classes.dart`/BClass#