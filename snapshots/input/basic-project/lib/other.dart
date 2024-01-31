import 'more.dart' deferred as more;

class Foo {
  int _far;
  bool value;
  String value2;
  double? value3;
  Foo(
    this._far, {
    required this.value,
    required this.value2,
    this.value3,
  }) {
    print(_far);
  }
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

  Foo(1, value: true, value2: 'asdf')..value = false;

  final someStr = 'someStr';
  Foo(2, value: false, value2: 'some Val!')
    ..value = true
    ..value2 = someStr
    ..value3 = 2.15;

  more.test((_) => 'val');
}