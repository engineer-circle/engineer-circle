// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_seat_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateSeatGroup _$CreateSeatGroupFromJson(Map<String, dynamic> json) {
  return _CreateSeatGroup.fromJson(json);
}

/// @nodoc
mixin _$CreateSeatGroup {
  String get groupId => throw _privateConstructorUsedError;
  int get row => throw _privateConstructorUsedError;
  int get column => throw _privateConstructorUsedError;
  int get seatCount => throw _privateConstructorUsedError;
  SeatOrientation get seatOrientation => throw _privateConstructorUsedError;
  List<CreateSeat> get seats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateSeatGroupCopyWith<CreateSeatGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSeatGroupCopyWith<$Res> {
  factory $CreateSeatGroupCopyWith(
          CreateSeatGroup value, $Res Function(CreateSeatGroup) then) =
      _$CreateSeatGroupCopyWithImpl<$Res, CreateSeatGroup>;
  @useResult
  $Res call(
      {String groupId,
      int row,
      int column,
      int seatCount,
      SeatOrientation seatOrientation,
      List<CreateSeat> seats});
}

/// @nodoc
class _$CreateSeatGroupCopyWithImpl<$Res, $Val extends CreateSeatGroup>
    implements $CreateSeatGroupCopyWith<$Res> {
  _$CreateSeatGroupCopyWithImpl(this._value, this._then);

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
              as List<CreateSeat>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateSeatGroupImplCopyWith<$Res>
    implements $CreateSeatGroupCopyWith<$Res> {
  factory _$$CreateSeatGroupImplCopyWith(_$CreateSeatGroupImpl value,
          $Res Function(_$CreateSeatGroupImpl) then) =
      __$$CreateSeatGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String groupId,
      int row,
      int column,
      int seatCount,
      SeatOrientation seatOrientation,
      List<CreateSeat> seats});
}

/// @nodoc
class __$$CreateSeatGroupImplCopyWithImpl<$Res>
    extends _$CreateSeatGroupCopyWithImpl<$Res, _$CreateSeatGroupImpl>
    implements _$$CreateSeatGroupImplCopyWith<$Res> {
  __$$CreateSeatGroupImplCopyWithImpl(
      _$CreateSeatGroupImpl _value, $Res Function(_$CreateSeatGroupImpl) _then)
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
    return _then(_$CreateSeatGroupImpl(
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
              as List<CreateSeat>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CreateSeatGroupImpl extends _CreateSeatGroup {
  const _$CreateSeatGroupImpl(
      {required this.groupId,
      required this.row,
      required this.column,
      required this.seatCount,
      required this.seatOrientation,
      required final List<CreateSeat> seats})
      : _seats = seats,
        super._();

  factory _$CreateSeatGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateSeatGroupImplFromJson(json);

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
  final List<CreateSeat> _seats;
  @override
  List<CreateSeat> get seats {
    if (_seats is EqualUnmodifiableListView) return _seats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seats);
  }

  @override
  String toString() {
    return 'CreateSeatGroup(groupId: $groupId, row: $row, column: $column, seatCount: $seatCount, seatOrientation: $seatOrientation, seats: $seats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSeatGroupImpl &&
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
  _$$CreateSeatGroupImplCopyWith<_$CreateSeatGroupImpl> get copyWith =>
      __$$CreateSeatGroupImplCopyWithImpl<_$CreateSeatGroupImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateSeatGroupImplToJson(
      this,
    );
  }
}

abstract class _CreateSeatGroup extends CreateSeatGroup {
  const factory _CreateSeatGroup(
      {required final String groupId,
      required final int row,
      required final int column,
      required final int seatCount,
      required final SeatOrientation seatOrientation,
      required final List<CreateSeat> seats}) = _$CreateSeatGroupImpl;
  const _CreateSeatGroup._() : super._();

  factory _CreateSeatGroup.fromJson(Map<String, dynamic> json) =
      _$CreateSeatGroupImpl.fromJson;

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
  List<CreateSeat> get seats;
  @override
  @JsonKey(ignore: true)
  _$$CreateSeatGroupImplCopyWith<_$CreateSeatGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateSeat _$CreateSeatFromJson(Map<String, dynamic> json) {
  return _CreateSeat.fromJson(json);
}

/// @nodoc
mixin _$CreateSeat {
  String get seatId => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  bool get isSeated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateSeatCopyWith<CreateSeat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSeatCopyWith<$Res> {
  factory $CreateSeatCopyWith(
          CreateSeat value, $Res Function(CreateSeat) then) =
      _$CreateSeatCopyWithImpl<$Res, CreateSeat>;
  @useResult
  $Res call({String seatId, String? userId, bool isSeated});
}

/// @nodoc
class _$CreateSeatCopyWithImpl<$Res, $Val extends CreateSeat>
    implements $CreateSeatCopyWith<$Res> {
  _$CreateSeatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seatId = null,
    Object? userId = freezed,
    Object? isSeated = null,
  }) {
    return _then(_value.copyWith(
      seatId: null == seatId
          ? _value.seatId
          : seatId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      isSeated: null == isSeated
          ? _value.isSeated
          : isSeated // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateSeatImplCopyWith<$Res>
    implements $CreateSeatCopyWith<$Res> {
  factory _$$CreateSeatImplCopyWith(
          _$CreateSeatImpl value, $Res Function(_$CreateSeatImpl) then) =
      __$$CreateSeatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String seatId, String? userId, bool isSeated});
}

/// @nodoc
class __$$CreateSeatImplCopyWithImpl<$Res>
    extends _$CreateSeatCopyWithImpl<$Res, _$CreateSeatImpl>
    implements _$$CreateSeatImplCopyWith<$Res> {
  __$$CreateSeatImplCopyWithImpl(
      _$CreateSeatImpl _value, $Res Function(_$CreateSeatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seatId = null,
    Object? userId = freezed,
    Object? isSeated = null,
  }) {
    return _then(_$CreateSeatImpl(
      seatId: null == seatId
          ? _value.seatId
          : seatId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      isSeated: null == isSeated
          ? _value.isSeated
          : isSeated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateSeatImpl extends _CreateSeat {
  const _$CreateSeatImpl(
      {required this.seatId, this.userId, this.isSeated = false})
      : super._();

  factory _$CreateSeatImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateSeatImplFromJson(json);

  @override
  final String seatId;
  @override
  final String? userId;
  @override
  @JsonKey()
  final bool isSeated;

  @override
  String toString() {
    return 'CreateSeat(seatId: $seatId, userId: $userId, isSeated: $isSeated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSeatImpl &&
            (identical(other.seatId, seatId) || other.seatId == seatId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.isSeated, isSeated) ||
                other.isSeated == isSeated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, seatId, userId, isSeated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSeatImplCopyWith<_$CreateSeatImpl> get copyWith =>
      __$$CreateSeatImplCopyWithImpl<_$CreateSeatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateSeatImplToJson(
      this,
    );
  }
}

abstract class _CreateSeat extends CreateSeat {
  const factory _CreateSeat(
      {required final String seatId,
      final String? userId,
      final bool isSeated}) = _$CreateSeatImpl;
  const _CreateSeat._() : super._();

  factory _CreateSeat.fromJson(Map<String, dynamic> json) =
      _$CreateSeatImpl.fromJson;

  @override
  String get seatId;
  @override
  String? get userId;
  @override
  bool get isSeated;
  @override
  @JsonKey(ignore: true)
  _$$CreateSeatImplCopyWith<_$CreateSeatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
