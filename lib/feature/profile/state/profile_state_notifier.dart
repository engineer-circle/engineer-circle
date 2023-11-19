import 'package:engineer_circle/feature/profile/state/component_state/profile.dart';
import 'package:engineer_circle/feature/profile/state/profile_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final profileStateProvider =
    StateNotifierProvider.autoDispose<ProfileStateNotifier, ProfileState>(
  (ref) => ProfileStateNotifier(),
);

class ProfileStateNotifier extends StateNotifier<ProfileState> {
  ProfileStateNotifier() : super(ProfileStateLoading());

  void initProfile(
    Profile profile,
  ) {
    state = ProfileStateSuccess(
      profile: Profile(
        name: profile.name,
        skills: profile.skills,
        career: profile.career,
        selfIntroduction: profile.selfIntroduction,
        avatarUrl: profile.avatarUrl,
        twitterLink: profile.twitterLink,
        musubiteLink: profile.musubiteLink,
      ),
    );
  }
}
