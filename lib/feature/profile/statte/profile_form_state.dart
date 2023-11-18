import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_form_state.freezed.dart';

@freezed
class ProfileFormState with _$ProfileFormState {
  const factory ProfileFormState({
    @Default(null) InitialProfile? initialProfile,
    @Default(DraftProfile()) DraftProfile draftProfile,
  }) = _ProfileFormState;

  const ProfileFormState._();
}

@freezed
class InitialProfile with _$InitialProfile {
  const factory InitialProfile({
    required String name,
    required List<String> skills,
    required String career,
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
    String? career,
    String? selfIntroduction,
    String? avatarUrl,
    String? twitterLink,
    String? musubiteLink,
  }) = _DraftProfile;

  const DraftProfile._();
}
