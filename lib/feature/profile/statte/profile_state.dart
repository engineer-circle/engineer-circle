import 'package:engineer_circle/feature/profile/ui/component/profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

sealed class ProfileState {}

class ProfileStateLoading extends ProfileState {}

class ProfileStateFailure extends ProfileState {}

@freezed
class ProfileStateSuccess extends ProfileState with _$ProfileStateSuccess {
  const factory ProfileStateSuccess({
    required Profile profile,
  }) = _ProfileStateSuccess;
}
