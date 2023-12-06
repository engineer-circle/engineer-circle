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

SeatGroup _$SeatGroupFromJson(Map<String, dynamic> json) {
  return _SeatGroup.fromJson(json);
}

/// @nodoc
mixin _$SeatGroup {
  String get groupId => throw _privateConstructorUsedError;
  int get row => throw _privateConstructorUsedError;
  int get column => throw _privateConstructorUsedError;
  int get seatCount => throw _privateConstructorUsedError;
  SeatOrientation get seatOrientation => throw _privateConstructorUsedError;
  List<Seat> get seats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
      {String groupId,
      int row,
      int column,
      int seatCount,
      SeatOrientation seatOrientation,
      List<Seat> seats});
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
    Object? groupId = null,
    Object? row = null,
    Object? column = null,
    Object? seatCount = null,
    Object? seatOrientation = null,
    Object? seats = null,
  }) {
    return _then(_value.copyWith(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      row: null == row
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as int,
      column: null == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int,
      seatCount: null == seatCount
          ? _value.seatCount
          : seatCount // ignore: cast_nullable_to_non_nullable
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
      {String groupId,
      int row,
      int column,
      int seatCount,
      SeatOrientation seatOrientation,
      List<Seat> seats});
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
    Object? groupId = null,
    Object? row = null,
    Object? column = null,
    Object? seatCount = null,
    Object? seatOrientation = null,
    Object? seats = null,
  }) {
    return _then(_$SeatGroupImpl(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      row: null == row
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as int,
      column: null == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int,
      seatCount: null == seatCount
          ? _value.seatCount
          : seatCount // ignore: cast_nullable_to_non_nullable
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

@JsonSerializable(explicitToJson: true)
class _$SeatGroupImpl extends _SeatGroup {
  const _$SeatGroupImpl(
      {required this.groupId,
      required this.row,
      required this.column,
      required this.seatCount,
      required this.seatOrientation,
      required final List<Seat> seats})
      : _seats = seats,
        super._();

  factory _$SeatGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeatGroupImplFromJson(json);

  @override
  final String groupId;
  @override
  final int row;
  @override
  final int column;
  @override
  final int seatCount;
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
    return 'SeatGroup(groupId: $groupId, row: $row, column: $column, seatCount: $seatCount, seatOrientation: $seatOrientation, seats: $seats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeatGroupImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.row, row) || other.row == row) &&
            (identical(other.column, column) || other.column == column) &&
            (identical(other.seatCount, seatCount) ||
                other.seatCount == seatCount) &&
            (identical(other.seatOrientation, seatOrientation) ||
                other.seatOrientation == seatOrientation) &&
            const DeepCollectionEquality().equals(other._seats, _seats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, groupId, row, column, seatCount,
      seatOrientation, const DeepCollectionEquality().hash(_seats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeatGroupImplCopyWith<_$SeatGroupImpl> get copyWith =>
      __$$SeatGroupImplCopyWithImpl<_$SeatGroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeatGroupImplToJson(
      this,
    );
  }
}

abstract class _SeatGroup extends SeatGroup {
  const factory _SeatGroup(
      {required final String groupId,
      required final int row,
      required final int column,
      required final int seatCount,
      required final SeatOrientation seatOrientation,
      required final List<Seat> seats}) = _$SeatGroupImpl;
  const _SeatGroup._() : super._();

  factory _SeatGroup.fromJson(Map<String, dynamic> json) =
      _$SeatGroupImpl.fromJson;

  @override
  String get groupId;
  @override
  int get row;
  @override
  int get column;
  @override
  int get seatCount;
  @override
  SeatOrientation get seatOrientation;
  @override
  List<Seat> get seats;
  @override
  @JsonKey(ignore: true)
  _$$SeatGroupImplCopyWith<_$SeatGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Seat _$SeatFromJson(Map<String, dynamic> json) {
  return _Seat.fromJson(json);
}

/// @nodoc
mixin _$Seat {
  String get seatId => throw _privateConstructorUsedError;
  bool get isSeated => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeatCopyWith<Seat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeatCopyWith<$Res> {
  factory $SeatCopyWith(Seat value, $Res Function(Seat) then) =
      _$SeatCopyWithImpl<$Res, Seat>;
  @useResult
  $Res call({String seatId, bool isSeated, String? userId});
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
    Object? userId = freezed,
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
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeatImplCopyWith<$Res> implements $SeatCopyWith<$Res> {
  factory _$$SeatImplCopyWith(
          _$SeatImpl value, $Res Function(_$SeatImpl) then) =
      __$$SeatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String seatId, bool isSeated, String? userId});
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
    Object? userId = freezed,
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
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SeatImpl extends _Seat {
  const _$SeatImpl({required this.seatId, this.isSeated = false, this.userId})
      : super._();

  factory _$SeatImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeatImplFromJson(json);

  @override
  final String seatId;
  @override
  @JsonKey()
  final bool isSeated;
  @override
  final String? userId;

  @override
  String toString() {
    return 'Seat(seatId: $seatId, isSeated: $isSeated, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeatImpl &&
            (identical(other.seatId, seatId) || other.seatId == seatId) &&
            (identical(other.isSeated, isSeated) ||
                other.isSeated == isSeated) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, seatId, isSeated, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeatImplCopyWith<_$SeatImpl> get copyWith =>
      __$$SeatImplCopyWithImpl<_$SeatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeatImplToJson(
      this,
    );
  }
}

abstract class _Seat extends Seat {
  const factory _Seat(
      {required final String seatId,
      final bool isSeated,
      final String? userId}) = _$SeatImpl;
  const _Seat._() : super._();

  factory _Seat.fromJson(Map<String, dynamic> json) = _$SeatImpl.fromJson;

  @override
  String get seatId;
  @override
  bool get isSeated;
  @override
  String? get userId;
  @override
  @JsonKey(ignore: true)
  _$$SeatImplCopyWith<_$SeatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
