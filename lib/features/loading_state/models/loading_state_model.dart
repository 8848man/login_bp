import 'package:freezed_annotation/freezed_annotation.dart';

part 'loading_state_model.freezed.dart';

@freezed
class LoadingStateModel with _$LoadingStateModel {
  const factory LoadingStateModel({@Default(false) bool isLoading}) =
      _LoadingStateModel;
}
