import 'dart:collection'; // unused import

class _UnusedClass {}

@Deprecated('This method is deprecated')
void deprecatedMethod() {}

void deprecatedParam({
  @Deprecated('this param is deprecated') dynamic foobar
}) {}

void main() {
  final _unusedVariable = 'asdf';

  deprecatedMethod();
  deprecatedParam(foobar: 2);
}