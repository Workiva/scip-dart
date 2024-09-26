abstract class Mammal {
  String get getter;
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
  String get getter => 'value';
}