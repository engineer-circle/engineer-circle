// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seat_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SeatGroup {
  int get row => throw _privateConstructorUsedError;
  int get column => throw _privateConstructorUsedError;
  SeatOrientation get seatOrientation => throw _privateConstructorUsedError;
  List<Seat> get seats => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SeatGroupCopyWith<SeatGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeatGroupCopyWith<$Res> {
  factory $SeatGroupCopyWith(SeatGroup value, $Res Function(SeatGroup) then) =
      _$SeatGroupCopyWithImpl<$Res, SeatGroup>;
  @useResult
  $Res call(
      {int row, int column, SeatOrientation seatOrientation, List<Seat> seats});
}

/// @nodoc
class _$SeatGroupCopyWithImpl<$Res, $Val extends SeatGroup>
    implements $SeatGroupCopyWith<$Res> {
  _$SeatGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? row = null,
    Object? column = null,
    Object? seatOrientation = null,
    Object? seats = null,
  }) {
    return _then(_value.copyWith(
      row: null == row
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as int,
      column: null == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int,
      seatOrientation: null == seatOrientation
          ? _value.seatOrientation
          : seatOrientation // ignore: cast_nullable_to_non_nullable
              as SeatOrientation,
      seats: null == seats
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as List<Seat>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeatGroupImplCopyWith<$Res>
    implements $SeatGroupCopyWith<$Res> {
  factory _$$SeatGroupImplCopyWith(
          _$SeatGroupImpl value, $Res Function(_$SeatGroupImpl) then) =
      __$$SeatGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int row, int column, SeatOrientation seatOrientation, List<Seat> seats});
}

/// @nodoc
class __$$SeatGroupImplCopyWithImpl<$Res>
    extends _$SeatGroupCopyWithImpl<$Res, _$SeatGroupImpl>
    implements _$$SeatGroupImplCopyWith<$Res> {
  __$$SeatGroupImplCopyWithImpl(
      _$SeatGroupImpl _value, $Res Function(_$SeatGroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? row = null,
    Object? column = null,
    Object? seatOrientation = null,
    Object? seats = null,
  }) {
    return _then(_$SeatGroupImpl(
      row: null == row
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as int,
      column: null == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int,
      seatOrientation: null == seatOrientation
          ? _value.seatOrientation
          : seatOrientation // ignore: cast_nullable_to_non_nullable
              as SeatOrientation,
      seats: null == seats
          ? _value._seats
          : seats // ignore: cast_nullable_to_non_nullable
              as List<Seat>,
    ));
  }
}

/// @nodoc

class _$SeatGroupImpl extends _SeatGroup {
  const _$SeatGroupImpl(
      {required this.row,
      required this.column,
      required this.seatOrientation,
      required final List<Seat> seats})
      : _seats = seats,
        super._();

  @override
  final int row;
  @override
  final int column;
  @override
  final SeatOrientation seatOrientation;
  final List<Seat> _seats;
  @override
  List<Seat> get seats {
    if (_seats is EqualUnmodifiableListView) return _seats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seats);
  }

  @override
  String toString() {
    return 'SeatGroup(row: $row, column: $column, seatOrientation: $seatOrientation, seats: $seats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeatGroupImpl &&
            (identical(other.row, row) || other.row == row) &&
            (identical(other.column, column) || other.column == column) &&
            (identical(other.seatOrientation, seatOrientation) ||
                other.seatOrientation == seatOrientation) &&
            const DeepCollectionEquality().equals(other._seats, _seats));
  }

  @override
  int get hashCode => Object.hash(runtimeType, row, column, seatOrientation,
      const DeepCollectionEquality().hash(_seats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeatGroupImplCopyWith<_$SeatGroupImpl> get copyWith =>
      __$$SeatGroupImplCopyWithImpl<_$SeatGroupImpl>(this, _$identity);
}

abstract class _SeatGroup extends SeatGroup {
  const factory _SeatGroup(
      {required final int row,
      required final int column,
      required final SeatOrientation seatOrientation,
      required final List<Seat> seats}) = _$SeatGroupImpl;
  const _SeatGroup._() : super._();

  @override
  int get row;
  @override
  int get column;
  @override
  SeatOrientation get seatOrientation;
  @override
  List<Seat> get seats;
  @override
  @JsonKey(ignore: true)
  _$$SeatGroupImplCopyWith<_$SeatGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Seat {
  String get seatId => throw _privateConstructorUsedError;
  bool get isSeated => throw _privateConstructorUsedError;
  Profile? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SeatCopyWith<Seat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeatCopyWith<$Res> {
  factory $SeatCopyWith(Seat value, $Res Function(Seat) then) =
      _$SeatCopyWithImpl<$Res, Seat>;
  @useResult
  $Res call({String seatId, bool isSeated, Profile? user});

  $ProfileCopyWith<$Res>? get user;
}

/// @nodoc
class _$SeatCopyWithImpl<$Res, $Val extends Seat>
    implements $SeatCopyWith<$Res> {
  _$SeatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seatId = null,
    Object? isSeated = null,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      seatId: null == seatId
          ? _value.seatId
          : seatId // ignore: cast_nullable_to_non_nullable
              as String,
      isSeated: null == isSeated
          ? _value.isSeated
          : isSeated // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Profile?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $ProfileCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SeatImplCopyWith<$Res> implements $SeatCopyWith<$Res> {
  factory _$$SeatImplCopyWith(
          _$SeatImpl value, $Res Function(_$SeatImpl) then) =
      __$$SeatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String seatId, bool isSeated, Profile? user});

  @override
  $ProfileCopyWith<$Res>? get user;
}

/// @nodoc
class __$$SeatImplCopyWithImpl<$Res>
    extends _$SeatCopyWithImpl<$Res, _$SeatImpl>
    implements _$$SeatImplCopyWith<$Res> {
  __$$SeatImplCopyWithImpl(_$SeatImpl _value, $Res Function(_$SeatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seatId = null,
    Object? isSeated = null,
    Object? user = freezed,
  }) {
    return _then(_$SeatImpl(
      seatId: null == seatId
          ? _value.seatId
          : seatId // ignore: cast_nullable_to_non_nullable
              as String,
      isSeated: null == isSeated
          ? _value.isSeated
          : isSeated // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Profile?,
    ));
  }
}

/// @nodoc

class _$SeatImpl extends _Seat {
  const _$SeatImpl({required this.seatId, this.isSeated = false, this.user})
      : super._();

  @override
  final String seatId;
  @override
  @JsonKey()
  final bool isSeated;
  @override
  final Profile? user;

  @override
  String toString() {
    return 'Seat(seatId: $seatId, isSeated: $isSeated, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeatImpl &&
            (identical(other.seatId, seatId) || other.seatId == seatId) &&
            (identical(other.isSeated, isSeated) ||
                other.isSeated == isSeated) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, seatId, isSeated, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeatImplCopyWith<_$SeatImpl> get copyWith =>
      __$$SeatImplCopyWithImpl<_$SeatImpl>(this, _$identity);
}

abstract class _Seat extends Seat {
  const factory _Seat(
      {required final String seatId,
      final bool isSeated,
      final Profile? user}) = _$SeatImpl;
  const _Seat._() : super._();

  @override
  String get seatId;
  @override
  bool get isSeated;
  @override
  Profile? get user;
  @override
  @JsonKey(ignore: true)
  _$$SeatImplCopyWith<_$SeatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
