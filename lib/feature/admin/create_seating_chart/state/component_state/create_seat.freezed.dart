// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_seat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateSeat {
  int get row => throw _privateConstructorUsedError;
  int get column => throw _privateConstructorUsedError;
  int get seatCount => throw _privateConstructorUsedError;
  SeatOrientation get seatOrientation => throw _privateConstructorUsedError;

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
  $Res call(
      {int row, int column, int seatCount, SeatOrientation seatOrientation});
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
    Object? row = null,
    Object? column = null,
    Object? seatCount = null,
    Object? seatOrientation = null,
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
      seatCount: null == seatCount
          ? _value.seatCount
          : seatCount // ignore: cast_nullable_to_non_nullable
              as int,
      seatOrientation: null == seatOrientation
          ? _value.seatOrientation
          : seatOrientation // ignore: cast_nullable_to_non_nullable
              as SeatOrientation,
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
  $Res call(
      {int row, int column, int seatCount, SeatOrientation seatOrientation});
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
    Object? row = null,
    Object? column = null,
    Object? seatCount = null,
    Object? seatOrientation = null,
  }) {
    return _then(_$CreateSeatImpl(
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
    ));
  }
}

/// @nodoc

class _$CreateSeatImpl extends _CreateSeat {
  const _$CreateSeatImpl(
      {required this.row,
      required this.column,
      required this.seatCount,
      required this.seatOrientation})
      : super._();

  @override
  final int row;
  @override
  final int column;
  @override
  final int seatCount;
  @override
  final SeatOrientation seatOrientation;

  @override
  String toString() {
    return 'CreateSeat(row: $row, column: $column, seatCount: $seatCount, seatOrientation: $seatOrientation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSeatImpl &&
            (identical(other.row, row) || other.row == row) &&
            (identical(other.column, column) || other.column == column) &&
            (identical(other.seatCount, seatCount) ||
                other.seatCount == seatCount) &&
            (identical(other.seatOrientation, seatOrientation) ||
                other.seatOrientation == seatOrientation));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, row, column, seatCount, seatOrientation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSeatImplCopyWith<_$CreateSeatImpl> get copyWith =>
      __$$CreateSeatImplCopyWithImpl<_$CreateSeatImpl>(this, _$identity);
}

abstract class _CreateSeat extends CreateSeat {
  const factory _CreateSeat(
      {required final int row,
      required final int column,
      required final int seatCount,
      required final SeatOrientation seatOrientation}) = _$CreateSeatImpl;
  const _CreateSeat._() : super._();

  @override
  int get row;
  @override
  int get column;
  @override
  int get seatCount;
  @override
  SeatOrientation get seatOrientation;
  @override
  @JsonKey(ignore: true)
  _$$CreateSeatImplCopyWith<_$CreateSeatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
