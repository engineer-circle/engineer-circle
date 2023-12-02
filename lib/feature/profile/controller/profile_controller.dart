import 'package:engineer_circle/feature/profile/state/component_state/career_option.dart';
import 'package:engineer_circle/feature/profile/state/component_state/user.dart';
import 'package:engineer_circle/feature/profile/state/profile_state_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final profileProvider = Provider(
  (ref) => ProfileController(ref: ref),
);

class ProfileController {
  ProfileController({
    required Ref ref,
  }) : _ref = ref;

  final Ref _ref;

  Future<void> init() async {
    // TODO: Remoteから取得する
    const user = User(
      name: 'kuwa',
      skills: ['Android', 'Flutter'],
      career: CareerOption.jobHuntingOrConsideringChange,
      selfIntroduction: 'エンジニア4年目です。\nよろしくお願いします！',
      avatarUrl:
          "https://lh3.googleusercontent.com/a/ACg8ocLEtQvFJ-FBYsPcdzNrSebBlKXfdySdQdEKmIBbcNwyAWU=s288-c-no",
      twitterLink: 'https://twitter.com/kilalabu',
      musubiteLink: 'https://musubite-job.com',
    );

    _ref.read(profileStateProvider.notifier).initProfile(user);
  }
}
