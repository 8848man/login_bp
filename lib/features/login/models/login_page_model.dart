import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_page_model.freezed.dart';
part 'login_page_model.g.dart';

@freezed
class LoginPageModel with _$LoginPageModel {
  const factory LoginPageModel({
    @Default(null) String? emailErrorText,
    @Default(null) String? pwdErrorText,
  }) = _LoginPageModel;

  factory LoginPageModel.fromJson(Map<String, dynamic> json) =>
      _$LoginPageModelFromJson(json);
}
