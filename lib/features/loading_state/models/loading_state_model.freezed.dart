// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loading_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LoadingStateModel {
  bool get isLoading => throw _privateConstructorUsedError;

  /// Create a copy of LoadingStateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoadingStateModelCopyWith<LoadingStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingStateModelCopyWith<$Res> {
  factory $LoadingStateModelCopyWith(
    LoadingStateModel value,
    $Res Function(LoadingStateModel) then,
  ) = _$LoadingStateModelCopyWithImpl<$Res, LoadingStateModel>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$LoadingStateModelCopyWithImpl<$Res, $Val extends LoadingStateModel>
    implements $LoadingStateModelCopyWith<$Res> {
  _$LoadingStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoadingStateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isLoading = null}) {
    return _then(
      _value.copyWith(
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LoadingStateModelImplCopyWith<$Res>
    implements $LoadingStateModelCopyWith<$Res> {
  factory _$$LoadingStateModelImplCopyWith(
    _$LoadingStateModelImpl value,
    $Res Function(_$LoadingStateModelImpl) then,
  ) = __$$LoadingStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$LoadingStateModelImplCopyWithImpl<$Res>
    extends _$LoadingStateModelCopyWithImpl<$Res, _$LoadingStateModelImpl>
    implements _$$LoadingStateModelImplCopyWith<$Res> {
  __$$LoadingStateModelImplCopyWithImpl(
    _$LoadingStateModelImpl _value,
    $Res Function(_$LoadingStateModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoadingStateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isLoading = null}) {
    return _then(
      _$LoadingStateModelImpl(
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$LoadingStateModelImpl implements _LoadingStateModel {
  const _$LoadingStateModelImpl({this.isLoading = false});

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'LoadingStateModel(isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingStateModelImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  /// Create a copy of LoadingStateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingStateModelImplCopyWith<_$LoadingStateModelImpl> get copyWith =>
      __$$LoadingStateModelImplCopyWithImpl<_$LoadingStateModelImpl>(
        this,
        _$identity,
      );
}

abstract class _LoadingStateModel implements LoadingStateModel {
  const factory _LoadingStateModel({final bool isLoading}) =
      _$LoadingStateModelImpl;

  @override
  bool get isLoading;

  /// Create a copy of LoadingStateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingStateModelImplCopyWith<_$LoadingStateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
