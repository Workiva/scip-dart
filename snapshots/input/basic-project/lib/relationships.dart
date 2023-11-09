abstract class Mammal {
  String get hierarchy;
}

abstract class Animal extends Mammal {
  String sound() => 'NOISE!';
}

mixin SwimAction {
  void execute() => print('swimming...');
}

class Dog extends Animal with SwimAction {
  @override
  String sound() => 'woof';

  @override
  String get hierarchy => 'dog.animal.mammal';
}