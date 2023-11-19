// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileFormStateSuccess {
  Profile? get initialProfile => throw _privateConstructorUsedError;
  DraftProfile get draftProfile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileFormStateSuccessCopyWith<ProfileFormStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileFormStateSuccessCopyWith<$Res> {
  factory $ProfileFormStateSuccessCopyWith(ProfileFormStateSuccess value,
          $Res Function(ProfileFormStateSuccess) then) =
      _$ProfileFormStateSuccessCopyWithImpl<$Res, ProfileFormStateSuccess>;
  @useResult
  $Res call({Profile? initialProfile, DraftProfile draftProfile});

  $ProfileCopyWith<$Res>? get initialProfile;
  $DraftProfileCopyWith<$Res> get draftProfile;
}

/// @nodoc
class _$ProfileFormStateSuccessCopyWithImpl<$Res,
        $Val extends ProfileFormStateSuccess>
    implements $ProfileFormStateSuccessCopyWith<$Res> {
  _$ProfileFormStateSuccessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialProfile = freezed,
    Object? draftProfile = null,
  }) {
    return _then(_value.copyWith(
      initialProfile: freezed == initialProfile
          ? _value.initialProfile
          : initialProfile // ignore: cast_nullable_to_non_nullable
              as Profile?,
      draftProfile: null == draftProfile
          ? _value.draftProfile
          : draftProfile // ignore: cast_nullable_to_non_nullable
              as DraftProfile,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileCopyWith<$Res>? get initialProfile {
    if (_value.initialProfile == null) {
      return null;
    }

    return $ProfileCopyWith<$Res>(_value.initialProfile!, (value) {
      return _then(_value.copyWith(initialProfile: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DraftProfileCopyWith<$Res> get draftProfile {
    return $DraftProfileCopyWith<$Res>(_value.draftProfile, (value) {
      return _then(_value.copyWith(draftProfile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileFormStateSuccessImplCopyWith<$Res>
    implements $ProfileFormStateSuccessCopyWith<$Res> {
  factory _$$ProfileFormStateSuccessImplCopyWith(
          _$ProfileFormStateSuccessImpl value,
          $Res Function(_$ProfileFormStateSuccessImpl) then) =
      __$$ProfileFormStateSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Profile? initialProfile, DraftProfile draftProfile});

  @override
  $ProfileCopyWith<$Res>? get initialProfile;
  @override
  $DraftProfileCopyWith<$Res> get draftProfile;
}

/// @nodoc
class __$$ProfileFormStateSuccessImplCopyWithImpl<$Res>
    extends _$ProfileFormStateSuccessCopyWithImpl<$Res,
        _$ProfileFormStateSuccessImpl>
    implements _$$ProfileFormStateSuccessImplCopyWith<$Res> {
  __$$ProfileFormStateSuccessImplCopyWithImpl(
      _$ProfileFormStateSuccessImpl _value,
      $Res Function(_$ProfileFormStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialProfile = freezed,
    Object? draftProfile = null,
  }) {
    return _then(_$ProfileFormStateSuccessImpl(
      initialProfile: freezed == initialProfile
          ? _value.initialProfile
          : initialProfile // ignore: cast_nullable_to_non_nullable
              as Profile?,
      draftProfile: null == draftProfile
          ? _value.draftProfile
          : draftProfile // ignore: cast_nullable_to_non_nullable
              as DraftProfile,
    ));
  }
}

/// @nodoc

class _$ProfileFormStateSuccessImpl implements _ProfileFormStateSuccess {
  const _$ProfileFormStateSuccessImpl(
      {required this.initialProfile, required this.draftProfile});

  @override
  final Profile? initialProfile;
  @override
  final DraftProfile draftProfile;

  @override
  String toString() {
    return 'ProfileFormStateSuccess(initialProfile: $initialProfile, draftProfile: $draftProfile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileFormStateSuccessImpl &&
            (identical(other.initialProfile, initialProfile) ||
                other.initialProfile == initialProfile) &&
            (identical(other.draftProfile, draftProfile) ||
                other.draftProfile == draftProfile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialProfile, draftProfile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileFormStateSuccessImplCopyWith<_$ProfileFormStateSuccessImpl>
      get copyWith => __$$ProfileFormStateSuccessImplCopyWithImpl<
          _$ProfileFormStateSuccessImpl>(this, _$identity);
}

abstract class _ProfileFormStateSuccess implements ProfileFormStateSuccess {
  const factory _ProfileFormStateSuccess(
          {required final Profile? initialProfile,
          required final DraftProfile draftProfile}) =
      _$ProfileFormStateSuccessImpl;

  @override
  Profile? get initialProfile;
  @override
  DraftProfile get draftProfile;
  @override
  @JsonKey(ignore: true)
  _$$ProfileFormStateSuccessImplCopyWith<_$ProfileFormStateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
