import 'more.dart' deferred as more;

class Foo {
  int _far;
  bool value;
  String value2;
  double value3;
  Foo(this._far);
}

class Bar {
  String _someValue;
  Bar(this._someValue);

  void someMethod() {
    _someValue = 'asdf';
    print(_someValue);
  }
}

void main() {
  more.loadLibrary().then((_) => {
    Bar('a').someMethod.call()
  });

  Foo()..value = false;

  final someStr = 'someStr';
  Foo()
    ..value = true
    ..value2 = someStr
    ..value3 = 2.15
}