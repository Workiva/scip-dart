class AClass {
  AClass();
//^^^^^^ definition scip-dart pub scip_dart_test . lib/`constructors.dart`/AClass#`<constructor>`().

  AClass.bar() {
//       ^^^ definition scip-dart pub scip_dart_test . lib/`constructors.dart`/AClass#bar().
    print('');
  }

  factory AClass.car() => AClass();
  //             ^^^ definition scip-dart pub scip_dart_test . lib/`constructors.dart`/AClass#car().
}