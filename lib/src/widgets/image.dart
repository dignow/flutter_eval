import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_eval/src/foundation/key.dart';
import 'package:flutter_eval/src/painting/alignment.dart';
import 'package:flutter_eval/src/painting/box_fit.dart';
import 'package:flutter_eval/src/painting/image_provider.dart';
import 'package:flutter_eval/src/sky_engine/ui/image.dart';
import 'package:flutter_eval/src/sky_engine/ui/painting.dart';
import 'package:flutter_eval/src/widgets/framework.dart';

class $Image implements $Instance {
  static const $type = BridgeTypeRef(BridgeTypeSpec('package:flutter/src/widgets/image.dart', 'Image'));

  static const $declaration = BridgeClassDef(
    BridgeClassType($type, isAbstract: false, $extends: $Widget.$type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter('image', BridgeTypeAnnotation($ImageProvider.$type), false),
            BridgeParameter('key', BridgeTypeAnnotation($Key.$type), true),
            BridgeParameter('width', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), true),
            BridgeParameter('height', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), true),
            BridgeParameter('color', BridgeTypeAnnotation($Color.$type), true),
            BridgeParameter('fit', BridgeTypeAnnotation($BoxFit.$type), true),
            BridgeParameter('alignment', BridgeTypeAnnotation($AlignmentGeometry.$type), true),
            BridgeParameter(
              'filterQuality',
              BridgeTypeAnnotation($FilterQuality.$type),
              true,
            ),
          ],
        ),
      ),
      'network': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter('src', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.stringType)), false),
          ],
          namedParams: [
            BridgeParameter('key', BridgeTypeAnnotation($Key.$type), true),
            BridgeParameter('scale', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), true),
            BridgeParameter('width', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), true),
            BridgeParameter('height', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), true),
            BridgeParameter('color', BridgeTypeAnnotation($Color.$type), true),
            BridgeParameter('fit', BridgeTypeAnnotation($BoxFit.$type), true),
            BridgeParameter('alignment', BridgeTypeAnnotation($AlignmentGeometry.$type), true),
            BridgeParameter(
              'filterQuality',
              BridgeTypeAnnotation($FilterQuality.$type),
              true,
            ),
          ],
        ),
      ),
      'asset': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter('name', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.stringType)), false),
          ],
          namedParams: [
            BridgeParameter('key', BridgeTypeAnnotation($Key.$type), true),
            BridgeParameter('scale', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), true),
            BridgeParameter('width', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), true),
            BridgeParameter('height', BridgeTypeAnnotation(BridgeTypeRef.type(RuntimeTypes.doubleType)), true),
            BridgeParameter('color', BridgeTypeAnnotation($Color.$type), true),
            BridgeParameter('fit', BridgeTypeAnnotation($BoxFit.$type), true),
            BridgeParameter('alignment', BridgeTypeAnnotation($AlignmentGeometry.$type), true),
            BridgeParameter(
              'filterQuality',
              BridgeTypeAnnotation($FilterQuality.$type),
              true,
            ),
          ],
        ),
      ),
    },
    fields: {},
    getters: {},
    methods: {},
    setters: {},
    wrap: true,
  );

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    throw UnimplementedError();
  }

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Image.wrap(
      Image(
        image: args[0]!.$value,
        key: args[1]?.$value,
        width: args[2]?.$value,
        height: args[3]?.$value,
        color: args[4]?.$value,
        fit: args[5]?.$value,
        alignment: args[6]?.$value ?? Alignment.center,
        filterQuality: args[7]?.$value ?? FilterQuality.low,
      ),
    );
  }

  static $Value? $network(Runtime runtime, $Value? target, List<$Value?> args) {
    final url = args[0]!.$value;
    runtime.assertPermission('network', url);
    return $Image.wrap(
      Image.network(
        args[0]!.$value,
        key: args[1]?.$value,
        scale: args[2]?.$value,
        width: args[3]?.$value,
        height: args[4]?.$value,
        color: args[5]?.$value,
        fit: args[6]?.$value,
        alignment: args[7]?.$value ?? Alignment.center,
        filterQuality: args[8]?.$value ?? FilterQuality.low,
      ),
    );
  }

  static $Value? $asset(Runtime runtime, $Value? target, List<$Value?> args) {
    final name = args[0]!.$value;
    runtime.assertPermission('asset', name);
    return $Image.wrap(
      Image.asset(
        args[0]!.$value,
        key: args[1]?.$value,
        scale: args[2]?.$value,
        width: args[3]?.$value,
        height: args[4]?.$value,
        color: args[5]?.$value,
        fit: args[6]?.$value,
        alignment: args[7]?.$value ?? Alignment.center,
        filterQuality: args[8]?.$value ?? FilterQuality.low,
      ),
    );
  }

  @override
  get $reified => $value;

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    throw UnimplementedError();
  }

  /// Wrap an [Image] in an [$Image]
  $Image.wrap(this.$value);

  @override
  final Image $value;
}
