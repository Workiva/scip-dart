abstract class Mammal {
  String get someGetter;
  set someSetter(String v);
  String field = '';
}

abstract class Animal extends Mammal {
  String sound() => 'NOISE!';

  @override
  String field = 'asdf';
}

mixin SwimAction {
  void execute() => print('swimming...');
}

class Dog extends Animal with SwimAction {
  @override
  String field = 'otherVal';

  @override
  String sound() => 'woof';

  @override
  String get someGetter => 'value';

  @override
  set someSetter(String v) {};
}