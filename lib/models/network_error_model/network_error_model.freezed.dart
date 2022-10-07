// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'network_error_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetworkErrorModel {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;
  bool get isVisible => throw _privateConstructorUsedError;
  ButtonModel get buttonModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NetworkErrorModelCopyWith<NetworkErrorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkErrorModelCopyWith<$Res> {
  factory $NetworkErrorModelCopyWith(
          NetworkErrorModel value, $Res Function(NetworkErrorModel) then) =
      _$NetworkErrorModelCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String description,
      int? statusCode,
      bool isVisible,
      ButtonModel buttonModel});

  $ButtonModelCopyWith<$Res> get buttonModel;
}

/// @nodoc
class _$NetworkErrorModelCopyWithImpl<$Res>
    implements $NetworkErrorModelCopyWith<$Res> {
  _$NetworkErrorModelCopyWithImpl(this._value, this._then);

  final NetworkErrorModel _value;
  // ignore: unused_field
  final $Res Function(NetworkErrorModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? statusCode = freezed,
    Object? isVisible = freezed,
    Object? buttonModel = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      isVisible: isVisible == freezed
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      buttonModel: buttonModel == freezed
          ? _value.buttonModel
          : buttonModel // ignore: cast_nullable_to_non_nullable
              as ButtonModel,
    ));
  }

  @override
  $ButtonModelCopyWith<$Res> get buttonModel {
    return $ButtonModelCopyWith<$Res>(_value.buttonModel, (value) {
      return _then(_value.copyWith(buttonModel: value));
    });
  }
}

/// @nodoc
abstract class _$$_NetworkErrorModelCopyWith<$Res>
    implements $NetworkErrorModelCopyWith<$Res> {
  factory _$$_NetworkErrorModelCopyWith(_$_NetworkErrorModel value,
          $Res Function(_$_NetworkErrorModel) then) =
      __$$_NetworkErrorModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String description,
      int? statusCode,
      bool isVisible,
      ButtonModel buttonModel});

  @override
  $ButtonModelCopyWith<$Res> get buttonModel;
}

/// @nodoc
class __$$_NetworkErrorModelCopyWithImpl<$Res>
    extends _$NetworkErrorModelCopyWithImpl<$Res>
    implements _$$_NetworkErrorModelCopyWith<$Res> {
  __$$_NetworkErrorModelCopyWithImpl(
      _$_NetworkErrorModel _value, $Res Function(_$_NetworkErrorModel) _then)
      : super(_value, (v) => _then(v as _$_NetworkErrorModel));

  @override
  _$_NetworkErrorModel get _value => super._value as _$_NetworkErrorModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? statusCode = freezed,
    Object? isVisible = freezed,
    Object? buttonModel = freezed,
  }) {
    return _then(_$_NetworkErrorModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      isVisible: isVisible == freezed
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      buttonModel: buttonModel == freezed
          ? _value.buttonModel
          : buttonModel // ignore: cast_nullable_to_non_nullable
              as ButtonModel,
    ));
  }
}

/// @nodoc

class _$_NetworkErrorModel implements _NetworkErrorModel {
  const _$_NetworkErrorModel(
      {required this.title,
      required this.description,
      this.statusCode,
      this.isVisible = false,
      this.buttonModel = const ButtonModel(text: 'button.close')});

  @override
  final String title;
  @override
  final String description;
  @override
  final int? statusCode;
  @override
  @JsonKey()
  final bool isVisible;
  @override
  @JsonKey()
  final ButtonModel buttonModel;

  @override
  String toString() {
    return 'NetworkErrorModel(title: $title, description: $description, statusCode: $statusCode, isVisible: $isVisible, buttonModel: $buttonModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NetworkErrorModel &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode) &&
            const DeepCollectionEquality().equals(other.isVisible, isVisible) &&
            const DeepCollectionEquality()
                .equals(other.buttonModel, buttonModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(statusCode),
      const DeepCollectionEquality().hash(isVisible),
      const DeepCollectionEquality().hash(buttonModel));

  @JsonKey(ignore: true)
  @override
  _$$_NetworkErrorModelCopyWith<_$_NetworkErrorModel> get copyWith =>
      __$$_NetworkErrorModelCopyWithImpl<_$_NetworkErrorModel>(
          this, _$identity);
}

abstract class _NetworkErrorModel implements NetworkErrorModel {
  const factory _NetworkErrorModel(
      {required final String title,
      required final String description,
      final int? statusCode,
      final bool isVisible,
      final ButtonModel buttonModel}) = _$_NetworkErrorModel;

  @override
  String get title;
  @override
  String get description;
  @override
  int? get statusCode;
  @override
  bool get isVisible;
  @override
  ButtonModel get buttonModel;
  @override
  @JsonKey(ignore: true)
  _$$_NetworkErrorModelCopyWith<_$_NetworkErrorModel> get copyWith =>
      throw _privateConstructorUsedError;
}
