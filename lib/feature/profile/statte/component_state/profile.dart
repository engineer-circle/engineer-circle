import 'package:engineer_circle/feature/profile/statte/component_state/career_option.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';

@freezed
class Profile with _$Profile {
  const factory Profile({
    required String name,
    required List<String> skills,
    required CareerOption career,
    required String selfIntroduction,
    String? avatarUrl,
    String? twitterLink,
    String? musubiteLink,
  }) = _Profile;

  const Profile._();
}
