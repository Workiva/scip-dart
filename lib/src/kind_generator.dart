import 'package:analyzer/dart/element/element.dart';
import 'package:scip_dart/src/gen/scip.pbenum.dart';

SymbolInformation_Kind symbolKindFor(Element element) {
  // These mappings are declared in the same order as their symbol parsing
  // counterpart is declared within SymbolGenerator._getDescriptor. Ensure
  // this order stays consistent to ensure the correct kinds are included.
  final mappings = {
    ClassElement: SymbolInformation_Kind.Class,
    // MixinElement: SymbolInformation_Kind.Mixin, // Pending: https://github.com/sourcegraph/scip/pull/277
    EnumElement: SymbolInformation_Kind.Enum,
    TypeAliasElement: SymbolInformation_Kind.TypeAlias,
    // ExtensionDeclaration: SymbolInformation_Kind.Extension, // Pending: https://github.com/sourcegraph/scip/pull/277
    ConstructorElement: SymbolInformation_Kind.Constructor,
    MethodElement: SymbolInformation_Kind.Method,
    FunctionElement: SymbolInformation_Kind.Function,
    TopLevelVariableElement: SymbolInformation_Kind.Variable,
    PrefixElement: SymbolInformation_Kind.Namespace, // unsure if this is the right call for this
    TypeParameterElement: SymbolInformation_Kind.TypeParameter,
    ParameterElement: SymbolInformation_Kind.Parameter,
    PropertyAccessorElement: SymbolInformation_Kind.Property,
    FieldElement: SymbolInformation_Kind.Field,
  };

  return mappings[element.runtimeType] ?? SymbolInformation_Kind.UnspecifiedKind;
}