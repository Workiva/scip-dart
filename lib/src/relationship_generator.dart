import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
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

    final referencingTypes = parentElement.allSupertypes
        .where(_interfaceContainsName(node.name.toString()));

    if (referencingTypes.isNotEmpty) {
      return referencingTypes
          .map((type) => Relationship(
              symbol: symbolGenerator.symbolFor(type.element),
              isImplementation: true,
              isReference: true))
          .toList();
    }
  }

  return null;
}

bool Function(InterfaceType) _interfaceContainsName(String name) {
  return (InterfaceType interfaceType) {
    return [...interfaceType.methods, ...interfaceType.accessors]
        .map((ref) => ref.name)
        .contains(name);
  };
}
