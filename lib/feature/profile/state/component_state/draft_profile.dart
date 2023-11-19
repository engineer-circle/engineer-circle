import 'package:engineer_circle/feature/profile/state/component_state/career_option.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'draft_profile.freezed.dart';

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
