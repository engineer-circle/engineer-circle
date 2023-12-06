// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seating_chart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SeatingChart _$SeatingChartFromJson(Map<String, dynamic> json) {
  return _SeatingChart.fromJson(json);
}

/// @nodoc
mixin _$SeatingChart {
  /// シート名
  String get title => throw _privateConstructorUsedError;

  /// 座席表
  List<SeatGroup> get seats => throw _privateConstructorUsedError;

  /// 作成日
  @unionTimestampConverter
  UnionTimestamp get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeatingChartCopyWith<SeatingChart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeatingChartCopyWith<$Res> {
  factory $SeatingChartCopyWith(
          SeatingChart value, $Res Function(SeatingChart) then) =
      _$SeatingChartCopyWithImpl<$Res, SeatingChart>;
  @useResult
  $Res call(
      {String title,
      List<SeatGroup> seats,
      @unionTimestampConverter UnionTimestamp createdAt});

  $UnionTimestampCopyWith<$Res> get createdAt;
}

/// @nodoc
class _$SeatingChartCopyWithImpl<$Res, $Val extends SeatingChart>
    implements $SeatingChartCopyWith<$Res> {
  _$SeatingChartCopyWithImpl(this._value, this._then);

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
              as List<SeatGroup>,
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
abstract class _$$SeatingChartImplCopyWith<$Res>
    implements $SeatingChartCopyWith<$Res> {
  factory _$$SeatingChartImplCopyWith(
          _$SeatingChartImpl value, $Res Function(_$SeatingChartImpl) then) =
      __$$SeatingChartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      List<SeatGroup> seats,
      @unionTimestampConverter UnionTimestamp createdAt});

  @override
  $UnionTimestampCopyWith<$Res> get createdAt;
}

/// @nodoc
class __$$SeatingChartImplCopyWithImpl<$Res>
    extends _$SeatingChartCopyWithImpl<$Res, _$SeatingChartImpl>
    implements _$$SeatingChartImplCopyWith<$Res> {
  __$$SeatingChartImplCopyWithImpl(
      _$SeatingChartImpl _value, $Res Function(_$SeatingChartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? seats = null,
    Object? createdAt = null,
  }) {
    return _then(_$SeatingChartImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      seats: null == seats
          ? _value._seats
          : seats // ignore: cast_nullable_to_non_nullable
              as List<SeatGroup>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as UnionTimestamp,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SeatingChartImpl extends _SeatingChart {
  const _$SeatingChartImpl(
      {required this.title,
      required final List<SeatGroup> seats,
      @unionTimestampConverter
      this.createdAt = const UnionTimestamp.serverTimestamp()})
      : _seats = seats,
        super._();

  factory _$SeatingChartImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeatingChartImplFromJson(json);

  /// シート名
  @override
  final String title;

  /// 座席表
  final List<SeatGroup> _seats;

  /// 座席表
  @override
  List<SeatGroup> get seats {
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
    return 'SeatingChart(title: $title, seats: $seats, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeatingChartImpl &&
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
  _$$SeatingChartImplCopyWith<_$SeatingChartImpl> get copyWith =>
      __$$SeatingChartImplCopyWithImpl<_$SeatingChartImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeatingChartImplToJson(
      this,
    );
  }
}

abstract class _SeatingChart extends SeatingChart {
  const factory _SeatingChart(
          {required final String title,
          required final List<SeatGroup> seats,
          @unionTimestampConverter final UnionTimestamp createdAt}) =
      _$SeatingChartImpl;
  const _SeatingChart._() : super._();

  factory _SeatingChart.fromJson(Map<String, dynamic> json) =
      _$SeatingChartImpl.fromJson;

  @override

  /// シート名
  String get title;
  @override

  /// 座席表
  List<SeatGroup> get seats;
  @override

  /// 作成日
  @unionTimestampConverter
  UnionTimestamp get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$SeatingChartImplCopyWith<_$SeatingChartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
