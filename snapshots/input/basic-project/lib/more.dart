import 'dart:math';

enum AnimalType {
  cat,
  dog,
  bird,
}

typedef SoundMaker = void Function();

mixin SleepMixin {
  void sleep() {
    print('zzz...');
  }
}

class Animal with SleepMixin {
  String name;
  AnimalType type;
  SoundMaker? soundMaker;

  Animal(this.name, this.type) {
    switch (type) {
      case AnimalType.cat:
        soundMaker = () => print('Meow!');
        break;
      case AnimalType.dog:
        soundMaker = () => print('Woof!');
        break;
      case AnimalType.bird:
        soundMaker = () => print('Chirp!');
        break;
      default:
        soundMaker = () => print('Unknown animal type');
    }
  }

  void makeSound() {
    soundMaker?.call();
  }

  @override
  String toString() {
    return '$name the $type';
  }
}

int calculateSum(List<int> numbers) {
  return numbers.reduce((value, element) => value + element);
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  int sum = calculateSum(numbers);

  Animal cat = Animal('Kitty', AnimalType.cat);
  Animal dog = Animal('Buddy', AnimalType.dog);

  cat.makeSound();
  cat.sleep();

  dog.makeSound();
  dog.sleep();

  print(cat);
  print(dog);
  print('The sum of $numbers is $sum');
}