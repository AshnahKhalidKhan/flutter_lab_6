import 'package:flutter_lab_6/Core/Model/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'States.freezed.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState.initial() = _UserInitial;
  const factory UserState.loading() = _UserLoading;
  const factory UserState.success(User user) = _UserLoadedSuccess;
  const factory UserState.error(String message) = _UserLoadedError;
}
