import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter/material.dart';

const paintingBasicTypesSource = '''
export 'dart:ui' show
  BlendMode,
  BlurStyle,
  Canvas,
  Clip,
  Color,
  ColorFilter,
  FilterQuality,
  FontStyle,
  FontWeight,
  ImageShader,
  Locale,
  MaskFilter,
  Offset,
  Paint,
  PaintingStyle,
  Path,
  PathFillType,
  PathOperation,
  Radius,
  RRect,
  RSTransform,
  Rect,
  Shader,
  Size,
  StrokeCap,
  StrokeJoin,
  TextAffinity,
  TextAlign,
  TextBaseline,
  TextBox,
  TextDecoration,
  TextDecorationStyle,
  TextDirection,
  TextPosition,
  TileMode,
  VertexMode,
  // TODO(werainkhatri): remove these after their deprecation period in engine
  // https://github.com/flutter/flutter/pull/99505
  hashValues,
  hashList;

export 'package:flutter/foundation.dart' show VoidCallback;
 ''';

class $VerticalDirection implements $Instance {
  static const $type =
      BridgeTypeRef.spec(BridgeTypeSpec('package:flutter/src/painting/basic_types.dart', 'VerticalDirection'));

  static const $declaration =
      BridgeEnumDef($type, methods: {}, getters: {}, setters: {}, values: ['rtl', 'ltr'], fields: {});

  static final $values = {
    'up': $VerticalDirection.wrap(VerticalDirection.up),
    'down': $VerticalDirection.wrap(VerticalDirection.down),
  };

  $VerticalDirection.wrap(this.$value);

  @override
  final VerticalDirection $value;

  @override
  get $reified => $value;

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    throw UnimplementedError();
  }

  @override
  int get $runtimeType => throw UnimplementedError();

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    throw UnimplementedError();
  }
}
