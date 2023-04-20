import 'more.dart' deferred as more;

class Foo {
  int _far;
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
}