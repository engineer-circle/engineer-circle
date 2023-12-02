import 'package:engineer_circle/feature/profile/state/component_state/career_option.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    String? name,
    @Default([]) List<String> skills,
    CareerOption? career,
    String? selfIntroduction,
    String? avatarUrl,
    String? twitterLink,
    String? musubiteLink,
  }) = _User;

  const User._();

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
