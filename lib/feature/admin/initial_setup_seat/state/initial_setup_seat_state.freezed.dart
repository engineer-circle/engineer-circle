// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'initial_setup_seat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InitialSetupSeatState {
  SeatSelectionMethod? get seatSelectionMethod =>
      throw _privateConstructorUsedError;
  String? get seatName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InitialSetupSeatStateCopyWith<InitialSetupSeatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitialSetupSeatStateCopyWith<$Res> {
  factory $InitialSetupSeatStateCopyWith(InitialSetupSeatState value,
          $Res Function(InitialSetupSeatState) then) =
      _$InitialSetupSeatStateCopyWithImpl<$Res, InitialSetupSeatState>;
  @useResult
  $Res call({SeatSelectionMethod? seatSelectionMethod, String? seatName});
}

/// @nodoc
class _$InitialSetupSeatStateCopyWithImpl<$Res,
        $Val extends InitialSetupSeatState>
    implements $InitialSetupSeatStateCopyWith<$Res> {
  _$InitialSetupSeatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seatSelectionMethod = freezed,
    Object? seatName = freezed,
  }) {
    return _then(_value.copyWith(
      seatSelectionMethod: freezed == seatSelectionMethod
          ? _value.seatSelectionMethod
          : seatSelectionMethod // ignore: cast_nullable_to_non_nullable
              as SeatSelectionMethod?,
      seatName: freezed == seatName
          ? _value.seatName
          : seatName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialSetupSeatStateImplCopyWith<$Res>
    implements $InitialSetupSeatStateCopyWith<$Res> {
  factory _$$InitialSetupSeatStateImplCopyWith(
          _$InitialSetupSeatStateImpl value,
          $Res Function(_$InitialSetupSeatStateImpl) then) =
      __$$InitialSetupSeatStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SeatSelectionMethod? seatSelectionMethod, String? seatName});
}

/// @nodoc
class __$$InitialSetupSeatStateImplCopyWithImpl<$Res>
    extends _$InitialSetupSeatStateCopyWithImpl<$Res,
        _$InitialSetupSeatStateImpl>
    implements _$$InitialSetupSeatStateImplCopyWith<$Res> {
  __$$InitialSetupSeatStateImplCopyWithImpl(_$InitialSetupSeatStateImpl _value,
      $Res Function(_$InitialSetupSeatStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seatSelectionMethod = freezed,
    Object? seatName = freezed,
  }) {
    return _then(_$InitialSetupSeatStateImpl(
      seatSelectionMethod: freezed == seatSelectionMethod
          ? _value.seatSelectionMethod
          : seatSelectionMethod // ignore: cast_nullable_to_non_nullable
              as SeatSelectionMethod?,
      seatName: freezed == seatName
          ? _value.seatName
          : seatName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitialSetupSeatStateImpl extends _InitialSetupSeatState {
  const _$InitialSetupSeatStateImpl({this.seatSelectionMethod, this.seatName})
      : super._();

  @override
  final SeatSelectionMethod? seatSelectionMethod;
  @override
  final String? seatName;

  @override
  String toString() {
    return 'InitialSetupSeatState(seatSelectionMethod: $seatSelectionMethod, seatName: $seatName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialSetupSeatStateImpl &&
            (identical(other.seatSelectionMethod, seatSelectionMethod) ||
                other.seatSelectionMethod == seatSelectionMethod) &&
            (identical(other.seatName, seatName) ||
                other.seatName == seatName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, seatSelectionMethod, seatName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialSetupSeatStateImplCopyWith<_$InitialSetupSeatStateImpl>
      get copyWith => __$$InitialSetupSeatStateImplCopyWithImpl<
          _$InitialSetupSeatStateImpl>(this, _$identity);
}

abstract class _InitialSetupSeatState extends InitialSetupSeatState {
  const factory _InitialSetupSeatState(
      {final SeatSelectionMethod? seatSelectionMethod,
      final String? seatName}) = _$InitialSetupSeatStateImpl;
  const _InitialSetupSeatState._() : super._();

  @override
  SeatSelectionMethod? get seatSelectionMethod;
  @override
  String? get seatName;
  @override
  @JsonKey(ignore: true)
  _$$InitialSetupSeatStateImplCopyWith<_$InitialSetupSeatStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
