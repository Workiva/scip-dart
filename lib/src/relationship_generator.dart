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
  if (element is MethodElement || element is FieldElement || element is PropertyAccessorElement) {
    final parentNode = node.thisOrAncestorOfType<ClassDeclaration>();
    final parentElement = parentNode?.declaredElement;

    // this shouldn't happen, but if the parent element happens to be
    // null, just fail fast
    if (parentElement == null) return null;

    late final Iterable<Element> referencingElements;
    if (element is MethodElement) {
      referencingElements = parentElement.allSupertypes
        .expand((type) => type.methods)
        .where((type) => type.name == element.name);
    } else if (element is FieldElement) {
      referencingElements = parentElement.allSupertypes
        .expand((type) => type.accessors)
        .map((acc) => acc.variable)
        .where((variable) => variable.name == element.name)
        .toSet(); // remove any duplicates caused from synthetic getters/setters
    } if (element is PropertyAccessorElement) {
      referencingElements = parentElement.allSupertypes
        .expand((type) => type.accessors)
        .where((acc) => acc.isSetter == element.isSetter)
        .where((acc) => acc.isGetter == element.isGetter)
        .where((acc) => acc.variable.name == element.variable.name);
    }

    return referencingElements
        .map((type) => Relationship(
            symbol: symbolGenerator.symbolFor(type),
            isImplementation: true,
            isReference: true))
        .toList();
  }

  return null;
}
