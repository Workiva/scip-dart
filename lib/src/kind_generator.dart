import 'package:analyzer/dart/element/element.dart';
import 'package:scip_dart/src/gen/scip.pbenum.dart';

SymbolInformation_Kind symbolKindFor(Element el) {
  // These mappings are declared in the same order as their symbol parsing
  // counterpart is declared within SymbolGenerator._getDescriptor. Ensure
  // this order stays consistent to ensure the correct kinds are included.
  //
  // Note, we cannot declare this dynamically via a lookup map since the actual
  // type of [el], is the Impl counterpart (`ClassElementImpl`). runtimeType
  // type checking _does not_ take inheritance into account and `is` cannot
  // be used with variables. Hence the large list of if statements.
  if (el is ClassElement) {
    return SymbolInformation_Kind.Class;
  } else if (el is MixinElement) {
    // Pending: https://github.com/sourcegraph/scip/pull/277
    // return SymbolInformation_Kind.Mixin;
  } else if (el is EnumElement) {
    return SymbolInformation_Kind.Enum;
  } else if (el is TypeAliasElement) {
    return SymbolInformation_Kind.TypeAlias;
  } else if (el is ExtensionElement) {
    // Pending: https://github.com/sourcegraph/scip/pull/277
    // return SymbolInformation_Kind.Extension;
  } else if (el is ConstructorElement) {
    return SymbolInformation_Kind.Constructor;
  } else if (el is MethodElement) {
    return SymbolInformation_Kind.Method;
  } else if (el is FunctionElement) {
    return SymbolInformation_Kind.Function;
  } else if (el is TopLevelVariableElement) {
    return SymbolInformation_Kind.Variable;
  } else if (el is PrefixElement) {
    return SymbolInformation_Kind.Namespace;
  } else if (el is TypeParameterElement) {
    return SymbolInformation_Kind.TypeParameter;
  } else if (el is ParameterElement) {
    return SymbolInformation_Kind.Parameter;
  } else if (el is PropertyAccessorElement) {
    return SymbolInformation_Kind.Property;
  } else if (el is FieldElement) {
    return SymbolInformation_Kind.Field;
  }

  return SymbolInformation_Kind.UnspecifiedKind;
}
