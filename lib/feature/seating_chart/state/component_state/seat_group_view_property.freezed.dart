// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seat_group_view_property.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SeatGroupViewProperty {
  String get groupId => throw _privateConstructorUsedError;
  int get row => throw _privateConstructorUsedError;
  int get column => throw _privateConstructorUsedError;
  SeatOrientation get seatOrientation => throw _privateConstructorUsedError;
  List<SeatViewProperty> get seats => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SeatGroupViewPropertyCopyWith<SeatGroupViewProperty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeatGroupViewPropertyCopyWith<$Res> {
  factory $SeatGroupViewPropertyCopyWith(SeatGroupViewProperty value,
          $Res Function(SeatGroupViewProperty) then) =
      _$SeatGroupViewPropertyCopyWithImpl<$Res, SeatGroupViewProperty>;
  @useResult
  $Res call(
      {String groupId,
      int row,
      int column,
      SeatOrientation seatOrientation,
      List<SeatViewProperty> seats});
}

/// @nodoc
class _$SeatGroupViewPropertyCopyWithImpl<$Res,
        $Val extends SeatGroupViewProperty>
    implements $SeatGroupViewPropertyCopyWith<$Res> {
  _$SeatGroupViewPropertyCopyWithImpl(this._value, this._then);

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
      seatOrientation: null == seatOrientation
          ? _value.seatOrientation
          : seatOrientation // ignore: cast_nullable_to_non_nullable
              as SeatOrientation,
      seats: null == seats
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as List<SeatViewProperty>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeatGroupViewPropertyImplCopyWith<$Res>
    implements $SeatGroupViewPropertyCopyWith<$Res> {
  factory _$$SeatGroupViewPropertyImplCopyWith(
          _$SeatGroupViewPropertyImpl value,
          $Res Function(_$SeatGroupViewPropertyImpl) then) =
      __$$SeatGroupViewPropertyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String groupId,
      int row,
      int column,
      SeatOrientation seatOrientation,
      List<SeatViewProperty> seats});
}

/// @nodoc
class __$$SeatGroupViewPropertyImplCopyWithImpl<$Res>
    extends _$SeatGroupViewPropertyCopyWithImpl<$Res,
        _$SeatGroupViewPropertyImpl>
    implements _$$SeatGroupViewPropertyImplCopyWith<$Res> {
  __$$SeatGroupViewPropertyImplCopyWithImpl(_$SeatGroupViewPropertyImpl _value,
      $Res Function(_$SeatGroupViewPropertyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? row = null,
    Object? column = null,
    Object? seatOrientation = null,
    Object? seats = null,
  }) {
    return _then(_$SeatGroupViewPropertyImpl(
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
      seatOrientation: null == seatOrientation
          ? _value.seatOrientation
          : seatOrientation // ignore: cast_nullable_to_non_nullable
              as SeatOrientation,
      seats: null == seats
          ? _value._seats
          : seats // ignore: cast_nullable_to_non_nullable
              as List<SeatViewProperty>,
    ));
  }
}

/// @nodoc

class _$SeatGroupViewPropertyImpl extends _SeatGroupViewProperty {
  const _$SeatGroupViewPropertyImpl(
      {required this.groupId,
      required this.row,
      required this.column,
      required this.seatOrientation,
      required final List<SeatViewProperty> seats})
      : _seats = seats,
        super._();

  @override
  final String groupId;
  @override
  final int row;
  @override
  final int column;
  @override
  final SeatOrientation seatOrientation;
  final List<SeatViewProperty> _seats;
  @override
  List<SeatViewProperty> get seats {
    if (_seats is EqualUnmodifiableListView) return _seats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seats);
  }

  @override
  String toString() {
    return 'SeatGroupViewProperty(groupId: $groupId, row: $row, column: $column, seatOrientation: $seatOrientation, seats: $seats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeatGroupViewPropertyImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.row, row) || other.row == row) &&
            (identical(other.column, column) || other.column == column) &&
            (identical(other.seatOrientation, seatOrientation) ||
                other.seatOrientation == seatOrientation) &&
            const DeepCollectionEquality().equals(other._seats, _seats));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupId, row, column,
      seatOrientation, const DeepCollectionEquality().hash(_seats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeatGroupViewPropertyImplCopyWith<_$SeatGroupViewPropertyImpl>
      get copyWith => __$$SeatGroupViewPropertyImplCopyWithImpl<
          _$SeatGroupViewPropertyImpl>(this, _$identity);
}

abstract class _SeatGroupViewProperty extends SeatGroupViewProperty {
  const factory _SeatGroupViewProperty(
          {required final String groupId,
          required final int row,
          required final int column,
          required final SeatOrientation seatOrientation,
          required final List<SeatViewProperty> seats}) =
      _$SeatGroupViewPropertyImpl;
  const _SeatGroupViewProperty._() : super._();

  @override
  String get groupId;
  @override
  int get row;
  @override
  int get column;
  @override
  SeatOrientation get seatOrientation;
  @override
  List<SeatViewProperty> get seats;
  @override
  @JsonKey(ignore: true)
  _$$SeatGroupViewPropertyImplCopyWith<_$SeatGroupViewPropertyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SeatViewProperty {
  String get seatId => throw _privateConstructorUsedError;
  bool get isSeated => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SeatViewPropertyCopyWith<SeatViewProperty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeatViewPropertyCopyWith<$Res> {
  factory $SeatViewPropertyCopyWith(
          SeatViewProperty value, $Res Function(SeatViewProperty) then) =
      _$SeatViewPropertyCopyWithImpl<$Res, SeatViewProperty>;
  @useResult
  $Res call({String seatId, bool isSeated, User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$SeatViewPropertyCopyWithImpl<$Res, $Val extends SeatViewProperty>
    implements $SeatViewPropertyCopyWith<$Res> {
  _$SeatViewPropertyCopyWithImpl(this._value, this._then);

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
              as User?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SeatViewPropertyImplCopyWith<$Res>
    implements $SeatViewPropertyCopyWith<$Res> {
  factory _$$SeatViewPropertyImplCopyWith(_$SeatViewPropertyImpl value,
          $Res Function(_$SeatViewPropertyImpl) then) =
      __$$SeatViewPropertyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String seatId, bool isSeated, User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$SeatViewPropertyImplCopyWithImpl<$Res>
    extends _$SeatViewPropertyCopyWithImpl<$Res, _$SeatViewPropertyImpl>
    implements _$$SeatViewPropertyImplCopyWith<$Res> {
  __$$SeatViewPropertyImplCopyWithImpl(_$SeatViewPropertyImpl _value,
      $Res Function(_$SeatViewPropertyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seatId = null,
    Object? isSeated = null,
    Object? user = freezed,
  }) {
    return _then(_$SeatViewPropertyImpl(
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
              as User?,
    ));
  }
}

/// @nodoc

class _$SeatViewPropertyImpl extends _SeatViewProperty {
  const _$SeatViewPropertyImpl(
      {required this.seatId, this.isSeated = false, this.user})
      : super._();

  @override
  final String seatId;
  @override
  @JsonKey()
  final bool isSeated;
  @override
  final User? user;

  @override
  String toString() {
    return 'SeatViewProperty(seatId: $seatId, isSeated: $isSeated, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeatViewPropertyImpl &&
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
  _$$SeatViewPropertyImplCopyWith<_$SeatViewPropertyImpl> get copyWith =>
      __$$SeatViewPropertyImplCopyWithImpl<_$SeatViewPropertyImpl>(
          this, _$identity);
}

abstract class _SeatViewProperty extends SeatViewProperty {
  const factory _SeatViewProperty(
      {required final String seatId,
      final bool isSeated,
      final User? user}) = _$SeatViewPropertyImpl;
  const _SeatViewProperty._() : super._();

  @override
  String get seatId;
  @override
  bool get isSeated;
  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$SeatViewPropertyImplCopyWith<_$SeatViewPropertyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
