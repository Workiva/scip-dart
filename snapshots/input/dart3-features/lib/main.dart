(String, int) userInfo(Map<String, dynamic> json) {
  return (json['name'] as String, json['height'] as int);
}

void parser(int charCode) {
  const slash = 1;
  const star = 2;
  const plus = 3;
  const minus = 4;

  final nextCharCode = 'a';
  const digit0 = 0;
  const digit9 = 9;

  void skipComment() {}
  void operatorFn(int charCode) {}
  void number() {}
  void invalid() {}

  switch (charCode) {
    case slash when nextCharCode == slash:
      skipComment();

    case slash || star || plus || minus:
      operatorFn(charCode);

    case >= digit0 && <= digit9:
      number();

    default:
      invalid();
  }
}

const six = 6;
const msg = 'Feeling the Monday blues?';
String describeDate(DateTime dt) {
  const one = 1;
  return switch (dt.weekday) {
      one => 'Feeling the Monday blues?',
      7 || six => 'Enjoy the weekend!',
      _ => 'Hang in there.'
  };
}

void main() {
  var (
    String name,
    int height,
  ) = userInfo({'name': 'Michael', 'height': 180});
  print('User $name is $height cm tall.');


  final json = {'name': 'Michael', 'height': 180};
  if (json case {'name': 'Michael', 'height': int h}) {
    print('Michael is $h cm tall.');
  }
}

base class Foo {}
final class Bar {}
interface class Car {}
sealed class Zar {}