import 'package:engineer_circle/domain/career_option.dart';
import 'package:engineer_circle/domain/user.dart';
import 'package:engineer_circle/feature/profile/state/profile_form_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final profileFormStateProvider = StateNotifierProvider.autoDispose<
    ProfileFormStateNotifier, ProfileFormState>(
  (ref) => ProfileFormStateNotifier(),
);

class ProfileFormStateNotifier extends StateNotifier<ProfileFormState> {
  ProfileFormStateNotifier() : super(ProfileFormStateLoading());

  void initProfileForm(
    User user,
  ) {
    state = ProfileFormStateSuccess(
      initialProfile: user,
      draftProfile: User(
        id: user.id,
        name: user.name,
        skills: user.skills,
        career: user.career,
        selfIntroduction: user.selfIntroduction,
        avatarUrl: user.avatarUrl,
        twitterLink: user.twitterLink,
        musubiteLink: user.musubiteLink,
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
    switch (state) {
      case ProfileFormStateLoading _:
        return;
      case ProfileFormStateSuccess successState:
        final draftProfile = successState.draftProfile;
        final updateProfile = draftProfile.copyWith(
          name: name ?? draftProfile.name,
          career: career ?? draftProfile.career,
          selfIntroduction: selfIntroduction ?? draftProfile.selfIntroduction,
          avatarUrl: avatarUrl ?? draftProfile.avatarUrl,
          twitterLink: twitterLink ?? draftProfile.twitterLink,
          musubiteLink: muskieLink ?? draftProfile.musubiteLink,
        );

        state = successState.copyWith(
          draftProfile: updateProfile,
        );
    }
  }

  void addSkill(String skill) {
    switch (state) {
      case ProfileFormStateLoading _:
        return;
      case ProfileFormStateSuccess successState:
        final newSkills = [...successState.draftProfile.skills, skill];
        state = successState.copyWith(
          draftProfile: successState.draftProfile.copyWith(
            skills: newSkills,
          ),
        );
    }
  }

  void deleteSkill(int index) {
    switch (state) {
      case ProfileFormStateLoading _:
        return;
      case ProfileFormStateSuccess successState:
        // 現在のスキルリストをコピー
        final updatedSkills =
            List<String>.from(successState.draftProfile.skills);
        // 指定されたインデックスの要素を削除
        updatedSkills.removeAt(index);

        state = successState.copyWith(
          draftProfile: successState.draftProfile.copyWith(
            skills: updatedSkills,
          ),
        );
    }
  }
}
