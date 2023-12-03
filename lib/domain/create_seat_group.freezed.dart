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
      SeatOrientation seatOrientation});
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
      SeatOrientation seatOrientation});
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateSeatGroupImpl extends _CreateSeatGroup {
  const _$CreateSeatGroupImpl(
      {required this.groupId,
      required this.row,
      required this.column,
      required this.seatCount,
      required this.seatOrientation})
      : super._();

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

  @override
  String toString() {
    return 'CreateSeatGroup(groupId: $groupId, row: $row, column: $column, seatCount: $seatCount, seatOrientation: $seatOrientation)';
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
                other.seatOrientation == seatOrientation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, groupId, row, column, seatCount, seatOrientation);

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
      required final SeatOrientation seatOrientation}) = _$CreateSeatGroupImpl;
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
  @JsonKey(ignore: true)
  _$$CreateSeatGroupImplCopyWith<_$CreateSeatGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
