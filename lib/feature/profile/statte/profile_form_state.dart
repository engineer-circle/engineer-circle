import 'package:engineer_circle/feature/profile/statte/component_state/career_option.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_form_state.freezed.dart';

sealed class ProfileFormState {}

class ProfileFormStateLoading extends ProfileFormState {}

@freezed
class ProfileFormStateSuccess extends ProfileFormState
    with _$ProfileFormStateSuccess {
  const factory ProfileFormStateSuccess({
    required InitialProfile? initialProfile,
    required DraftProfile draftProfile,
  }) = _ProfileFormStateSuccess;
}

@freezed
class InitialProfile with _$InitialProfile {
  const factory InitialProfile({
    required String name,
    required List<String> skills,
    required CareerOption career,
    required String selfIntroduction,
    String? avatarUrl,
    String? twitterLink,
    String? musubiteLink,
  }) = _InitialProfile;

  const InitialProfile._();
}

@freezed
class DraftProfile with _$DraftProfile {
  const factory DraftProfile({
    String? name,
    @Default([]) List<String> skills,
    CareerOption? career,
    String? selfIntroduction,
    String? avatarUrl,
    String? twitterLink,
    String? musubiteLink,
  }) = _DraftProfile;

  const DraftProfile._();
}
