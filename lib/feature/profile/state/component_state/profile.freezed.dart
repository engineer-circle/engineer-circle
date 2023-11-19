// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Profile {
  String get name => throw _privateConstructorUsedError;
  List<String> get skills => throw _privateConstructorUsedError;
  CareerOption get career => throw _privateConstructorUsedError;
  String get selfIntroduction => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  String? get twitterLink => throw _privateConstructorUsedError;
  String? get musubiteLink => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res, Profile>;
  @useResult
  $Res call(
      {String name,
      List<String> skills,
      CareerOption career,
      String selfIntroduction,
      String? avatarUrl,
      String? twitterLink,
      String? musubiteLink});
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res, $Val extends Profile>
    implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? skills = null,
    Object? career = null,
    Object? selfIntroduction = null,
    Object? avatarUrl = freezed,
    Object? twitterLink = freezed,
    Object? musubiteLink = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      skills: null == skills
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>,
      career: null == career
          ? _value.career
          : career // ignore: cast_nullable_to_non_nullable
              as CareerOption,
      selfIntroduction: null == selfIntroduction
          ? _value.selfIntroduction
          : selfIntroduction // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterLink: freezed == twitterLink
          ? _value.twitterLink
          : twitterLink // ignore: cast_nullable_to_non_nullable
              as String?,
      musubiteLink: freezed == musubiteLink
          ? _value.musubiteLink
          : musubiteLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileImplCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$$ProfileImplCopyWith(
          _$ProfileImpl value, $Res Function(_$ProfileImpl) then) =
      __$$ProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      List<String> skills,
      CareerOption career,
      String selfIntroduction,
      String? avatarUrl,
      String? twitterLink,
      String? musubiteLink});
}

/// @nodoc
class __$$ProfileImplCopyWithImpl<$Res>
    extends _$ProfileCopyWithImpl<$Res, _$ProfileImpl>
    implements _$$ProfileImplCopyWith<$Res> {
  __$$ProfileImplCopyWithImpl(
      _$ProfileImpl _value, $Res Function(_$ProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? skills = null,
    Object? career = null,
    Object? selfIntroduction = null,
    Object? avatarUrl = freezed,
    Object? twitterLink = freezed,
    Object? musubiteLink = freezed,
  }) {
    return _then(_$ProfileImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      skills: null == skills
          ? _value._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>,
      career: null == career
          ? _value.career
          : career // ignore: cast_nullable_to_non_nullable
              as CareerOption,
      selfIntroduction: null == selfIntroduction
          ? _value.selfIntroduction
          : selfIntroduction // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterLink: freezed == twitterLink
          ? _value.twitterLink
          : twitterLink // ignore: cast_nullable_to_non_nullable
              as String?,
      musubiteLink: freezed == musubiteLink
          ? _value.musubiteLink
          : musubiteLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ProfileImpl extends _Profile {
  const _$ProfileImpl(
      {required this.name,
      required final List<String> skills,
      required this.career,
      required this.selfIntroduction,
      this.avatarUrl,
      this.twitterLink,
      this.musubiteLink})
      : _skills = skills,
        super._();

  @override
  final String name;
  final List<String> _skills;
  @override
  List<String> get skills {
    if (_skills is EqualUnmodifiableListView) return _skills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skills);
  }

  @override
  final CareerOption career;
  @override
  final String selfIntroduction;
  @override
  final String? avatarUrl;
  @override
  final String? twitterLink;
  @override
  final String? musubiteLink;

  @override
  String toString() {
    return 'Profile(name: $name, skills: $skills, career: $career, selfIntroduction: $selfIntroduction, avatarUrl: $avatarUrl, twitterLink: $twitterLink, musubiteLink: $musubiteLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._skills, _skills) &&
            (identical(other.career, career) || other.career == career) &&
            (identical(other.selfIntroduction, selfIntroduction) ||
                other.selfIntroduction == selfIntroduction) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.twitterLink, twitterLink) ||
                other.twitterLink == twitterLink) &&
            (identical(other.musubiteLink, musubiteLink) ||
                other.musubiteLink == musubiteLink));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_skills),
      career,
      selfIntroduction,
      avatarUrl,
      twitterLink,
      musubiteLink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      __$$ProfileImplCopyWithImpl<_$ProfileImpl>(this, _$identity);
}

abstract class _Profile extends Profile {
  const factory _Profile(
      {required final String name,
      required final List<String> skills,
      required final CareerOption career,
      required final String selfIntroduction,
      final String? avatarUrl,
      final String? twitterLink,
      final String? musubiteLink}) = _$ProfileImpl;
  const _Profile._() : super._();

  @override
  String get name;
  @override
  List<String> get skills;
  @override
  CareerOption get career;
  @override
  String get selfIntroduction;
  @override
  String? get avatarUrl;
  @override
  String? get twitterLink;
  @override
  String? get musubiteLink;
  @override
  @JsonKey(ignore: true)
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
