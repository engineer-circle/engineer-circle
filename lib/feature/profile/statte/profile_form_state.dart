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
