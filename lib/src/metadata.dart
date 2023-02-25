import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:scip_dart/src/gen/scip.pb.dart';

class SymbolMetadata {
  List<String> documentation;

  SymbolMetadata({
    required this.documentation
  });
}

class OccurrenceMetadata {
  SyntaxKind syntaxKind;

  OccurrenceMetadata({
    this.syntaxKind = SyntaxKind.UnspecifiedSyntaxKind
  });
}

SymbolMetadata getSymbolMetadata(Element element) {
  final displayString = element.getDisplayString(
    withNullability: false,
    multiline: true,
  );

  return SymbolMetadata(
    documentation:[
      '```dart\n$displayString\n```',
      if (element.documentationComment != null) 
        element.documentationComment!.split('///').join('\n'),
    ],
  );
}

OccurrenceMetadata getOccurrenceMetadata(AstNode node) {
  final kind = _getSyntaxKind(node);

  return OccurrenceMetadata(
    syntaxKind: kind,
  );
}

SyntaxKind _getSyntaxKind(AstNode node) {
  if (node is FormalParameter) {
    return SyntaxKind.IdentifierParameter;
  } else if (node is FunctionDeclaration) {
    return SyntaxKind.IdentifierFunctionDefinition;
  }

  return SyntaxKind.UnspecifiedSyntaxKind;
}