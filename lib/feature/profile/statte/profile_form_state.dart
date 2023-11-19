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

enum CareerOption {
  jobHuntingOrConsideringChange,
  lookingForSideJob,
  willingToIntroduceOwnCompany,
  noneOfTheAbove,
}

extension CareerOptionExtension on CareerOption {
  String get displayName {
    switch (this) {
      case CareerOption.jobHuntingOrConsideringChange:
        return '転職活動中・転職を考えている';
      case CareerOption.lookingForSideJob:
        return '副業を探している';
      case CareerOption.willingToIntroduceOwnCompany:
        return '良い人がいれば自社を紹介したい';
      case CareerOption.noneOfTheAbove:
        return 'どちらでもない';
    }
  }
}
