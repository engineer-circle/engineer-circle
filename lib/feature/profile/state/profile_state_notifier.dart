import 'package:engineer_circle/domain/user.dart';
import 'package:engineer_circle/feature/profile/state/profile_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final profileStateProvider =
    StateNotifierProvider.autoDispose<ProfileStateNotifier, ProfileState>(
  (ref) => ProfileStateNotifier(),
);

class ProfileStateNotifier extends StateNotifier<ProfileState> {
  ProfileStateNotifier() : super(ProfileStateLoading());

  void initProfile(
    User user,
  ) {
    state = ProfileStateSuccess(
      user: User(
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
}
