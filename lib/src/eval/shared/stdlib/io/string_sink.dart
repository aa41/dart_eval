import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/src/eval/runtime/runtime.dart';
import 'package:dart_eval/src/eval/shared/stdlib/core/base.dart';

/// dart_eval wrapper for [StringSink]
class $StringSink implements $Instance {
  $StringSink.wrap(this.$value);

  /// Compile-time bridged type reference for [$StringSink]
  static const $type = BridgeTypeRef(BridgeTypeSpec('dart:io', 'StringSink'));

  /// Compile-time bridged class declaration for [$StringSink]
  static const $declaration = BridgeClassDef(BridgeClassType($type, isAbstract: true),
      constructors: {
        '': BridgeConstructorDef(BridgeFunctionDef(returns: BridgeTypeAnnotation($type), params: [], namedParams: []))
      },
      methods: {
        'write': BridgeMethodDef(
            BridgeFunctionDef(returns: BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.voidType)), params: [
          BridgeParameter(
              'object', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.objectType), nullable: true), false),
        ], namedParams: [])),
        'writeAll': BridgeMethodDef(
            BridgeFunctionDef(returns: BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.voidType)), params: [
          BridgeParameter('objects', BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.iterable)), false),
          BridgeParameter(
              'separator', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.stringType), nullable: true), true),
        ], namedParams: [])),
        'writeln': BridgeMethodDef(
            BridgeFunctionDef(returns: BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.voidType)), params: [
          BridgeParameter(
              'object', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.objectType), nullable: true), true),
        ], namedParams: [])),
        'writeCharCode': BridgeMethodDef(
            BridgeFunctionDef(returns: BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.voidType)), params: [
          BridgeParameter('charCode', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.intType)), false),
        ], namedParams: [])),
      },
      getters: {},
      setters: {},
      fields: {},
      wrap: true);

  late final $Instance _superclass = $Object($value);

  @override
  final StringSink $value;

  @override
  get $reified => $value;

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'write':
        return __write;
      case 'writeAll':
        return __writeAll;
      case 'writeln':
        return __writeln;
      case 'writeCharCode':
        return _writeCharCode;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static final $Function __write = $Function(_write);

  static $Value? _write(Runtime runtime, $Value? target, List<$Value?> args) {
    final object = args[0];
    target!.$value.write(object!.$value);
    return null;
  }

  static final $Function __writeAll = $Function(_writeAll);

  static $Value? _writeAll(Runtime runtime, $Value? target, List<$Value?> args) {
    final objects = args[0]!.$value;
    final separator = args[1]?.$value;
    target!.$value.writeAll(objects!.$reified, separator);
    return null;
  }

  static final $Function __writeln = $Function(_writeln);

  static $Value? _writeln(Runtime runtime, $Value? target, List<$Value?> args) {
    final object = args[0]?.$value;
    target!.$value.writeln(object);
    return null;
  }

  static final $Function _writeCharCode = $Function(__writeCharCode);

  static $Value? __writeCharCode(Runtime runtime, $Value? target, List<$Value?> args) {
    final charCode = args[0]!.$value;
    target!.$value.writeCharCode(charCode);
    return null;
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
