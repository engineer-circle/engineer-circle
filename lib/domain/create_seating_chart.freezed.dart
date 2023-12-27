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
  String get seatTitle => throw _privateConstructorUsedError;

  /// 座席表
  List<SeatGroup> get seatGroupList => throw _privateConstructorUsedError;

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
  $Res call({String seatTitle, List<SeatGroup> seatGroupList});
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
    Object? seatTitle = null,
    Object? seatGroupList = null,
  }) {
    return _then(_value.copyWith(
      seatTitle: null == seatTitle
          ? _value.seatTitle
          : seatTitle // ignore: cast_nullable_to_non_nullable
              as String,
      seatGroupList: null == seatGroupList
          ? _value.seatGroupList
          : seatGroupList // ignore: cast_nullable_to_non_nullable
              as List<SeatGroup>,
    ) as $Val);
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
  $Res call({String seatTitle, List<SeatGroup> seatGroupList});
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
    Object? seatTitle = null,
    Object? seatGroupList = null,
  }) {
    return _then(_$CreateSeatingChartImpl(
      seatTitle: null == seatTitle
          ? _value.seatTitle
          : seatTitle // ignore: cast_nullable_to_non_nullable
              as String,
      seatGroupList: null == seatGroupList
          ? _value._seatGroupList
          : seatGroupList // ignore: cast_nullable_to_non_nullable
              as List<SeatGroup>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CreateSeatingChartImpl extends _CreateSeatingChart {
  const _$CreateSeatingChartImpl(
      {required this.seatTitle, required final List<SeatGroup> seatGroupList})
      : _seatGroupList = seatGroupList,
        super._();

  factory _$CreateSeatingChartImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateSeatingChartImplFromJson(json);

  /// シート名
  @override
  final String seatTitle;

  /// 座席表
  final List<SeatGroup> _seatGroupList;

  /// 座席表
  @override
  List<SeatGroup> get seatGroupList {
    if (_seatGroupList is EqualUnmodifiableListView) return _seatGroupList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seatGroupList);
  }

  @override
  String toString() {
    return 'CreateSeatingChart(seatTitle: $seatTitle, seatGroupList: $seatGroupList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSeatingChartImpl &&
            (identical(other.seatTitle, seatTitle) ||
                other.seatTitle == seatTitle) &&
            const DeepCollectionEquality()
                .equals(other._seatGroupList, _seatGroupList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, seatTitle,
      const DeepCollectionEquality().hash(_seatGroupList));

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
      {required final String seatTitle,
      required final List<SeatGroup> seatGroupList}) = _$CreateSeatingChartImpl;
  const _CreateSeatingChart._() : super._();

  factory _CreateSeatingChart.fromJson(Map<String, dynamic> json) =
      _$CreateSeatingChartImpl.fromJson;

  @override

  /// シート名
  String get seatTitle;
  @override

  /// 座席表
  List<SeatGroup> get seatGroupList;
  @override
  @JsonKey(ignore: true)
  _$$CreateSeatingChartImplCopyWith<_$CreateSeatingChartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
