// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'button_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ButtonModel {
  String get text => throw _privateConstructorUsedError;
  bool get isTransparent => throw _privateConstructorUsedError;
  Widget? get icon => throw _privateConstructorUsedError;
  Function? get onPress => throw _privateConstructorUsedError;
  FontWeight? get fontWeight => throw _privateConstructorUsedError;
  Color? get color => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ButtonModelCopyWith<ButtonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ButtonModelCopyWith<$Res> {
  factory $ButtonModelCopyWith(
          ButtonModel value, $Res Function(ButtonModel) then) =
      _$ButtonModelCopyWithImpl<$Res>;
  $Res call(
      {String text,
      bool isTransparent,
      Widget? icon,
      Function? onPress,
      FontWeight? fontWeight,
      Color? color});
}

/// @nodoc
class _$ButtonModelCopyWithImpl<$Res> implements $ButtonModelCopyWith<$Res> {
  _$ButtonModelCopyWithImpl(this._value, this._then);

  final ButtonModel _value;
  // ignore: unused_field
  final $Res Function(ButtonModel) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? isTransparent = freezed,
    Object? icon = freezed,
    Object? onPress = freezed,
    Object? fontWeight = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isTransparent: isTransparent == freezed
          ? _value.isTransparent
          : isTransparent // ignore: cast_nullable_to_non_nullable
              as bool,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Widget?,
      onPress: onPress == freezed
          ? _value.onPress
          : onPress // ignore: cast_nullable_to_non_nullable
              as Function?,
      fontWeight: fontWeight == freezed
          ? _value.fontWeight
          : fontWeight // ignore: cast_nullable_to_non_nullable
              as FontWeight?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc
abstract class _$$_ButtonModelCopyWith<$Res>
    implements $ButtonModelCopyWith<$Res> {
  factory _$$_ButtonModelCopyWith(
          _$_ButtonModel value, $Res Function(_$_ButtonModel) then) =
      __$$_ButtonModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String text,
      bool isTransparent,
      Widget? icon,
      Function? onPress,
      FontWeight? fontWeight,
      Color? color});
}

/// @nodoc
class __$$_ButtonModelCopyWithImpl<$Res> extends _$ButtonModelCopyWithImpl<$Res>
    implements _$$_ButtonModelCopyWith<$Res> {
  __$$_ButtonModelCopyWithImpl(
      _$_ButtonModel _value, $Res Function(_$_ButtonModel) _then)
      : super(_value, (v) => _then(v as _$_ButtonModel));

  @override
  _$_ButtonModel get _value => super._value as _$_ButtonModel;

  @override
  $Res call({
    Object? text = freezed,
    Object? isTransparent = freezed,
    Object? icon = freezed,
    Object? onPress = freezed,
    Object? fontWeight = freezed,
    Object? color = freezed,
  }) {
    return _then(_$_ButtonModel(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isTransparent: isTransparent == freezed
          ? _value.isTransparent
          : isTransparent // ignore: cast_nullable_to_non_nullable
              as bool,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Widget?,
      onPress: onPress == freezed
          ? _value.onPress
          : onPress // ignore: cast_nullable_to_non_nullable
              as Function?,
      fontWeight: fontWeight == freezed
          ? _value.fontWeight
          : fontWeight // ignore: cast_nullable_to_non_nullable
              as FontWeight?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc

class _$_ButtonModel implements _ButtonModel {
  const _$_ButtonModel(
      {this.text = 'button.close',
      this.isTransparent = false,
      this.icon,
      this.onPress,
      this.fontWeight,
      this.color});

  @override
  @JsonKey()
  final String text;
  @override
  @JsonKey()
  final bool isTransparent;
  @override
  final Widget? icon;
  @override
  final Function? onPress;
  @override
  final FontWeight? fontWeight;
  @override
  final Color? color;

  @override
  String toString() {
    return 'ButtonModel(text: $text, isTransparent: $isTransparent, icon: $icon, onPress: $onPress, fontWeight: $fontWeight, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ButtonModel &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality()
                .equals(other.isTransparent, isTransparent) &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality().equals(other.onPress, onPress) &&
            const DeepCollectionEquality()
                .equals(other.fontWeight, fontWeight) &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(isTransparent),
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(onPress),
      const DeepCollectionEquality().hash(fontWeight),
      const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  _$$_ButtonModelCopyWith<_$_ButtonModel> get copyWith =>
      __$$_ButtonModelCopyWithImpl<_$_ButtonModel>(this, _$identity);
}

abstract class _ButtonModel implements ButtonModel {
  const factory _ButtonModel(
      {final String text,
      final bool isTransparent,
      final Widget? icon,
      final Function? onPress,
      final FontWeight? fontWeight,
      final Color? color}) = _$_ButtonModel;

  @override
  String get text;
  @override
  bool get isTransparent;
  @override
  Widget? get icon;
  @override
  Function? get onPress;
  @override
  FontWeight? get fontWeight;
  @override
  Color? get color;
  @override
  @JsonKey(ignore: true)
  _$$_ButtonModelCopyWith<_$_ButtonModel> get copyWith =>
      throw _privateConstructorUsedError;
}
