// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_page_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LoginPageModel _$LoginPageModelFromJson(Map<String, dynamic> json) {
  return _LoginPageModel.fromJson(json);
}

/// @nodoc
mixin _$LoginPageModel {
  String? get emailErrorText => throw _privateConstructorUsedError;
  String? get pwdErrorText => throw _privateConstructorUsedError;

  /// Serializes this LoginPageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginPageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginPageModelCopyWith<LoginPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginPageModelCopyWith<$Res> {
  factory $LoginPageModelCopyWith(
    LoginPageModel value,
    $Res Function(LoginPageModel) then,
  ) = _$LoginPageModelCopyWithImpl<$Res, LoginPageModel>;
  @useResult
  $Res call({String? emailErrorText, String? pwdErrorText});
}

/// @nodoc
class _$LoginPageModelCopyWithImpl<$Res, $Val extends LoginPageModel>
    implements $LoginPageModelCopyWith<$Res> {
  _$LoginPageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginPageModel
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
abstract class _$$LoginPageModelImplCopyWith<$Res>
    implements $LoginPageModelCopyWith<$Res> {
  factory _$$LoginPageModelImplCopyWith(
    _$LoginPageModelImpl value,
    $Res Function(_$LoginPageModelImpl) then,
  ) = __$$LoginPageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? emailErrorText, String? pwdErrorText});
}

/// @nodoc
class __$$LoginPageModelImplCopyWithImpl<$Res>
    extends _$LoginPageModelCopyWithImpl<$Res, _$LoginPageModelImpl>
    implements _$$LoginPageModelImplCopyWith<$Res> {
  __$$LoginPageModelImplCopyWithImpl(
    _$LoginPageModelImpl _value,
    $Res Function(_$LoginPageModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginPageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailErrorText = freezed,
    Object? pwdErrorText = freezed,
  }) {
    return _then(
      _$LoginPageModelImpl(
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
class _$LoginPageModelImpl implements _LoginPageModel {
  const _$LoginPageModelImpl({
    this.emailErrorText = null,
    this.pwdErrorText = null,
  });

  factory _$LoginPageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginPageModelImplFromJson(json);

  @override
  @JsonKey()
  final String? emailErrorText;
  @override
  @JsonKey()
  final String? pwdErrorText;

  @override
  String toString() {
    return 'LoginPageModel(emailErrorText: $emailErrorText, pwdErrorText: $pwdErrorText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginPageModelImpl &&
            (identical(other.emailErrorText, emailErrorText) ||
                other.emailErrorText == emailErrorText) &&
            (identical(other.pwdErrorText, pwdErrorText) ||
                other.pwdErrorText == pwdErrorText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, emailErrorText, pwdErrorText);

  /// Create a copy of LoginPageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginPageModelImplCopyWith<_$LoginPageModelImpl> get copyWith =>
      __$$LoginPageModelImplCopyWithImpl<_$LoginPageModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginPageModelImplToJson(this);
  }
}

abstract class _LoginPageModel implements LoginPageModel {
  const factory _LoginPageModel({
    final String? emailErrorText,
    final String? pwdErrorText,
  }) = _$LoginPageModelImpl;

  factory _LoginPageModel.fromJson(Map<String, dynamic> json) =
      _$LoginPageModelImpl.fromJson;

  @override
  String? get emailErrorText;
  @override
  String? get pwdErrorText;

  /// Create a copy of LoginPageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginPageModelImplCopyWith<_$LoginPageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
