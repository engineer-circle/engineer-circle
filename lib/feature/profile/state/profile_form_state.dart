import 'package:engineer_circle/feature/profile/state/component_state/profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_form_state.freezed.dart';

sealed class ProfileFormState {}

class ProfileFormStateLoading extends ProfileFormState {}

@freezed
class ProfileFormStateSuccess extends ProfileFormState
    with _$ProfileFormStateSuccess {
  const factory ProfileFormStateSuccess({
    required Profile? initialProfile,
    required Profile draftProfile,
  }) = _ProfileFormStateSuccess;
}
