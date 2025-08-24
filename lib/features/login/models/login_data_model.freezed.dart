// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LoginDataModel _$LoginDataModelFromJson(Map<String, dynamic> json) {
  return _LoginDataModel.fromJson(json);
}

/// @nodoc
mixin _$LoginDataModel {
  String? get emailErrorText => throw _privateConstructorUsedError;
  String? get pwdErrorText => throw _privateConstructorUsedError;

  /// Serializes this LoginDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginDataModelCopyWith<LoginDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDataModelCopyWith<$Res> {
  factory $LoginDataModelCopyWith(
    LoginDataModel value,
    $Res Function(LoginDataModel) then,
  ) = _$LoginDataModelCopyWithImpl<$Res, LoginDataModel>;
  @useResult
  $Res call({String? emailErrorText, String? pwdErrorText});
}

/// @nodoc
class _$LoginDataModelCopyWithImpl<$Res, $Val extends LoginDataModel>
    implements $LoginDataModelCopyWith<$Res> {
  _$LoginDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailErrorText = freezed,
    Object? pwdErrorText = freezed,
  }) {
    return _then(
      _value.copyWith(
            emailErrorText: freezed == emailErrorText
                ? _value.emailErrorText
                : emailErrorText // ignore: cast_nullable_to_non_nullable
                      as String?,
            pwdErrorText: freezed == pwdErrorText
                ? _value.pwdErrorText
                : pwdErrorText // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LoginDataModelImplCopyWith<$Res>
    implements $LoginDataModelCopyWith<$Res> {
  factory _$$LoginDataModelImplCopyWith(
    _$LoginDataModelImpl value,
    $Res Function(_$LoginDataModelImpl) then,
  ) = __$$LoginDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? emailErrorText, String? pwdErrorText});
}

/// @nodoc
class __$$LoginDataModelImplCopyWithImpl<$Res>
    extends _$LoginDataModelCopyWithImpl<$Res, _$LoginDataModelImpl>
    implements _$$LoginDataModelImplCopyWith<$Res> {
  __$$LoginDataModelImplCopyWithImpl(
    _$LoginDataModelImpl _value,
    $Res Function(_$LoginDataModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailErrorText = freezed,
    Object? pwdErrorText = freezed,
  }) {
    return _then(
      _$LoginDataModelImpl(
        emailErrorText: freezed == emailErrorText
            ? _value.emailErrorText
            : emailErrorText // ignore: cast_nullable_to_non_nullable
                  as String?,
        pwdErrorText: freezed == pwdErrorText
            ? _value.pwdErrorText
            : pwdErrorText // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginDataModelImpl implements _LoginDataModel {
  const _$LoginDataModelImpl({
    this.emailErrorText = null,
    this.pwdErrorText = null,
  });

  factory _$LoginDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginDataModelImplFromJson(json);

  @override
  @JsonKey()
  final String? emailErrorText;
  @override
  @JsonKey()
  final String? pwdErrorText;

  @override
  String toString() {
    return 'LoginDataModel(emailErrorText: $emailErrorText, pwdErrorText: $pwdErrorText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginDataModelImpl &&
            (identical(other.emailErrorText, emailErrorText) ||
                other.emailErrorText == emailErrorText) &&
            (identical(other.pwdErrorText, pwdErrorText) ||
                other.pwdErrorText == pwdErrorText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, emailErrorText, pwdErrorText);

  /// Create a copy of LoginDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginDataModelImplCopyWith<_$LoginDataModelImpl> get copyWith =>
      __$$LoginDataModelImplCopyWithImpl<_$LoginDataModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginDataModelImplToJson(this);
  }
}

abstract class _LoginDataModel implements LoginDataModel {
  const factory _LoginDataModel({
    final String? emailErrorText,
    final String? pwdErrorText,
  }) = _$LoginDataModelImpl;

  factory _LoginDataModel.fromJson(Map<String, dynamic> json) =
      _$LoginDataModelImpl.fromJson;

  @override
  String? get emailErrorText;
  @override
  String? get pwdErrorText;

  /// Create a copy of LoginDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginDataModelImplCopyWith<_$LoginDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
