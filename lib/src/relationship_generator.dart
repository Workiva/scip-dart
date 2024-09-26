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

    late final String name;
    if (element is PropertyAccessorElement) {
      name = element.variable.name;
    } else {
      name = element.name.toString();
    }

    // retrieve all of the methods and accessors of every parent type that
    // has the same name of [node]. These are the elements that this [node]
    // are overriding
    final referencingElements = parentElement.allSupertypes
        .map((type) => [...type.methods, ...type.accessors.map((a) => a.variable)])
        .expand((type) => type)
        .where((type) => type.name == name);

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
