import 'dart:math' as math;

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

  Animal(this.name, {required this.type}) {
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

  Animal cat = Animal('Kitty', type: AnimalType.cat);
  Animal dog = Animal('Buddy', type: AnimalType.dog);

  cat.makeSound();
  cat.sleep();

  dog.makeSound();
  dog.sleep();

  print(cat);
  print(dog);
  print('The sum of $numbers is $sum');

  print(math.Rectangle(1,2,3,4));

  [1,2].reduce((a, b) => a + b);
}

void test(String Function(int)) {}
void deepTest(String Function(void Function(String test))) {}