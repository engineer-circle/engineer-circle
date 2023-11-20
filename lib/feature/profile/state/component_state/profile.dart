import 'package:engineer_circle/feature/profile/state/component_state/career_option.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';

@freezed
class Profile with _$Profile {
  const factory Profile({
    String? name,
    @Default([]) List<String> skills,
    CareerOption? career,
    String? selfIntroduction,
    String? avatarUrl,
    String? twitterLink,
    String? musubiteLink,
  }) = _Profile;

  const Profile._();
}
