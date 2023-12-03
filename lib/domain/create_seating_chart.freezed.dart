// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_seating_chart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateSeatingChart _$CreateSeatingChartFromJson(Map<String, dynamic> json) {
  return _CreateSeatingChart.fromJson(json);
}

/// @nodoc
mixin _$CreateSeatingChart {
  /// シート名
  String get title => throw _privateConstructorUsedError;

  /// 座席表
  List<CreateSeatGroup> get seats => throw _privateConstructorUsedError;

  /// 作成日
  @unionTimestampConverter
  UnionTimestamp get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateSeatingChartCopyWith<CreateSeatingChart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSeatingChartCopyWith<$Res> {
  factory $CreateSeatingChartCopyWith(
          CreateSeatingChart value, $Res Function(CreateSeatingChart) then) =
      _$CreateSeatingChartCopyWithImpl<$Res, CreateSeatingChart>;
  @useResult
  $Res call(
      {String title,
      List<CreateSeatGroup> seats,
      @unionTimestampConverter UnionTimestamp createdAt});

  $UnionTimestampCopyWith<$Res> get createdAt;
}

/// @nodoc
class _$CreateSeatingChartCopyWithImpl<$Res, $Val extends CreateSeatingChart>
    implements $CreateSeatingChartCopyWith<$Res> {
  _$CreateSeatingChartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? seats = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      seats: null == seats
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as List<CreateSeatGroup>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as UnionTimestamp,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UnionTimestampCopyWith<$Res> get createdAt {
    return $UnionTimestampCopyWith<$Res>(_value.createdAt, (value) {
      return _then(_value.copyWith(createdAt: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateSeatingChartImplCopyWith<$Res>
    implements $CreateSeatingChartCopyWith<$Res> {
  factory _$$CreateSeatingChartImplCopyWith(_$CreateSeatingChartImpl value,
          $Res Function(_$CreateSeatingChartImpl) then) =
      __$$CreateSeatingChartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      List<CreateSeatGroup> seats,
      @unionTimestampConverter UnionTimestamp createdAt});

  @override
  $UnionTimestampCopyWith<$Res> get createdAt;
}

/// @nodoc
class __$$CreateSeatingChartImplCopyWithImpl<$Res>
    extends _$CreateSeatingChartCopyWithImpl<$Res, _$CreateSeatingChartImpl>
    implements _$$CreateSeatingChartImplCopyWith<$Res> {
  __$$CreateSeatingChartImplCopyWithImpl(_$CreateSeatingChartImpl _value,
      $Res Function(_$CreateSeatingChartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? seats = null,
    Object? createdAt = null,
  }) {
    return _then(_$CreateSeatingChartImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      seats: null == seats
          ? _value._seats
          : seats // ignore: cast_nullable_to_non_nullable
              as List<CreateSeatGroup>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as UnionTimestamp,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CreateSeatingChartImpl extends _CreateSeatingChart {
  const _$CreateSeatingChartImpl(
      {required this.title,
      required final List<CreateSeatGroup> seats,
      @unionTimestampConverter
      this.createdAt = const UnionTimestamp.serverTimestamp()})
      : _seats = seats,
        super._();

  factory _$CreateSeatingChartImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateSeatingChartImplFromJson(json);

  /// シート名
  @override
  final String title;

  /// 座席表
  final List<CreateSeatGroup> _seats;

  /// 座席表
  @override
  List<CreateSeatGroup> get seats {
    if (_seats is EqualUnmodifiableListView) return _seats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seats);
  }

  /// 作成日
  @override
  @JsonKey()
  @unionTimestampConverter
  final UnionTimestamp createdAt;

  @override
  String toString() {
    return 'CreateSeatingChart(title: $title, seats: $seats, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSeatingChartImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._seats, _seats) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title,
      const DeepCollectionEquality().hash(_seats), createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSeatingChartImplCopyWith<_$CreateSeatingChartImpl> get copyWith =>
      __$$CreateSeatingChartImplCopyWithImpl<_$CreateSeatingChartImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateSeatingChartImplToJson(
      this,
    );
  }
}

abstract class _CreateSeatingChart extends CreateSeatingChart {
  const factory _CreateSeatingChart(
          {required final String title,
          required final List<CreateSeatGroup> seats,
          @unionTimestampConverter final UnionTimestamp createdAt}) =
      _$CreateSeatingChartImpl;
  const _CreateSeatingChart._() : super._();

  factory _CreateSeatingChart.fromJson(Map<String, dynamic> json) =
      _$CreateSeatingChartImpl.fromJson;

  @override

  /// シート名
  String get title;
  @override

  /// 座席表
  List<CreateSeatGroup> get seats;
  @override

  /// 作成日
  @unionTimestampConverter
  UnionTimestamp get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$CreateSeatingChartImplCopyWith<_$CreateSeatingChartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
