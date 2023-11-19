import 'package:engineer_circle/feature/profile/statte/component_state/career_option.dart';
import 'package:engineer_circle/feature/profile/statte/component_state/profile.dart';
import 'package:engineer_circle/feature/profile/statte/profile_form_state_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final profileFormProvider = Provider(
  (ref) => ProfileFormController(ref: ref),
);

class ProfileFormController {
  ProfileFormController({
    required Ref ref,
  }) : _ref = ref;

  final Ref _ref;

  Future<void> initProfileForm(bool isEdit) async {
    final profile = isEdit
        // TODO: Remoteから取得する
        ? const Profile(
            name: 'kuwa',
            skills: ['Android', 'Flutter'],
            career: CareerOption.jobHuntingOrConsideringChange,
            selfIntroduction: 'エンジニア4年目です。\nよろしくお願いします！',
            avatarUrl:
                "https://lh3.googleusercontent.com/a/ACg8ocLEtQvFJ-FBYsPcdzNrSebBlKXfdySdQdEKmIBbcNwyAWU=s288-c-no",
            twitterLink: 'https://twitter.com/kilalabu',
            musubiteLink: 'https://musubite-job.com',
          )
        : null;
    _ref.read(profileFormStateProvider.notifier).initProfileForm(profile);
  }
}
