import 'package:engineer_circle/feature/profile/statte/profile_form_state.dart';
import 'package:engineer_circle/global/logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final profileFormStateProvider = StateNotifierProvider.autoDispose<
    ProfileFormStateNotifier, ProfileFormState>(
  (ref) => ProfileFormStateNotifier(),
);

class ProfileFormStateNotifier extends StateNotifier<ProfileFormState> {
  ProfileFormStateNotifier() : super(const ProfileFormState());

  void initProfileForm(
    InitialProfile? profile,
  ) {
    state = state.copyWith(
      initialProfile: profile,
      draftProfile: DraftProfile(
        name: profile?.name,
        career: profile?.career,
        selfIntroduction: profile?.selfIntroduction,
        avatarUrl: profile?.avatarUrl,
        twitterLink: profile?.twitterLink,
        musubiteLink: profile?.musubiteLink,
      ),
    );
  }

  void updateProfile({
    String? name,
    CareerOption? career,
    String? selfIntroduction,
    String? avatarUrl,
    String? twitterLink,
    String? muskieLink,
  }) {
    final draftProfile = state.draftProfile;
    final updateProfile = draftProfile.copyWith(
      name: name ?? draftProfile.name,
      career: career ?? draftProfile.career,
      selfIntroduction: selfIntroduction ?? draftProfile.selfIntroduction,
      avatarUrl: avatarUrl ?? draftProfile.avatarUrl,
      twitterLink: twitterLink ?? draftProfile.twitterLink,
      musubiteLink: muskieLink ?? draftProfile.musubiteLink,
    );

    state = state.copyWith(
      draftProfile: updateProfile,
    );
    logger.i(state.draftProfile);
  }

  void addSkill(String skill) {
    final newSkills = [...state.draftProfile.skills, skill];
    state = state.copyWith(
      draftProfile: state.draftProfile.copyWith(
        skills: newSkills,
      ),
    );
  }

  void deleteSkill(int index) {
    // 現在のスキルリストをコピー
    final updatedSkills = List<String>.from(state.draftProfile.skills);
    // 指定されたインデックスの要素を削除
    updatedSkills.removeAt(index);

    state = state.copyWith(
      draftProfile: state.draftProfile.copyWith(
        skills: updatedSkills,
      ),
    );
  }
}
