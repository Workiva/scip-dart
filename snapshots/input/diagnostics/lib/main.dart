import 'dart:collection'; // unused import

class _UnusedClass {}

void _unusedMethod() {}

String _unusedTopLevelVariable = 'asdf';

@Deprecated('This method is deprecated')
void deprecatedMethod() {}

void deprecatedParam({
  @Deprecated('this param is deprecated') dynamic foobar
}) {}

void main() {
  final unusedVariable = 'asdf';

  String variableWithUnecssaryDeclaration = 'asdf';

  // dead_code example
  if (true) { } else {
    print('This condition is never met!');
  }

  deprecatedMethod();
  deprecatedParam(foobar: 2);
}

@deprecated
void someDeprecatedFunc() {}