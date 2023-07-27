import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:scip_dart/src/gen/scip.pbserver.dart';
import 'package:scip_dart/src/symbol_generator.dart';

List<Relationship>? relationshipsFor(
  Declaration node,
  Element element,
  SymbolGenerator symbolGenerator,
) {
  // Only classes have relationships. Mixins and enums do not support
  // inheritance themselves and therefore do not have any relationships
  // to define.
  if (element is ClassElement) {
    // All things inherit from Object, if they have one supertype
    // there are no relationships
    if (element.allSupertypes.length <= 1) return null;

    return element.allSupertypes
        .where((type) => !type.isDartCoreObject)
        .map((type) => Relationship(
              symbol: symbolGenerator.symbolFor(type.element),
              isImplementation: true,
            ))
        .toList();
  }

  // Since mixins do not support inheritance, we only care about
  // methods that exist on classes
  if (node is MethodDeclaration && node.parent is ClassDeclaration) {
    final parentNode = node.parent as ClassDeclaration;
    final parentElement = parentNode.declaredElement as ClassElement;

    // retrieve all of the methods and accessors of every parent type that
    // has the same name of [node]. These are the elements that this [node]
    // are overriding
    final referencingElements = parentElement.allSupertypes
        .map((type) => [...type.methods, ...type.accessors])
        .expand((type) => type)
        .where((type) => type.name == node.name.toString());

    if (referencingElements.isNotEmpty) {
      return referencingElements
          .map((type) => Relationship(
              symbol: symbolGenerator.symbolFor(type),
              isImplementation: true,
              isReference: true))
          .toList();
    }
  }

  return null;
}
