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
  /// ドキュメントId
  String get docId => throw _privateConstructorUsedError;

  /// シート名
  String get seatTitle => throw _privateConstructorUsedError;

  /// 座席表
  List<SeatGroup> get seatGroupList => throw _privateConstructorUsedError;

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
      {String docId,
      String seatTitle,
      List<SeatGroup> seatGroupList,
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
    Object? docId = null,
    Object? seatTitle = null,
    Object? seatGroupList = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      docId: null == docId
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as String,
      seatTitle: null == seatTitle
          ? _value.seatTitle
          : seatTitle // ignore: cast_nullable_to_non_nullable
              as String,
      seatGroupList: null == seatGroupList
          ? _value.seatGroupList
          : seatGroupList // ignore: cast_nullable_to_non_nullable
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
      {String docId,
      String seatTitle,
      List<SeatGroup> seatGroupList,
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
    Object? docId = null,
    Object? seatTitle = null,
    Object? seatGroupList = null,
    Object? createdAt = null,
  }) {
    return _then(_$SeatingChartImpl(
      docId: null == docId
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as String,
      seatTitle: null == seatTitle
          ? _value.seatTitle
          : seatTitle // ignore: cast_nullable_to_non_nullable
              as String,
      seatGroupList: null == seatGroupList
          ? _value._seatGroupList
          : seatGroupList // ignore: cast_nullable_to_non_nullable
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
      {required this.docId,
      required this.seatTitle,
      required final List<SeatGroup> seatGroupList,
      @unionTimestampConverter
      this.createdAt = const UnionTimestamp.serverTimestamp()})
      : _seatGroupList = seatGroupList,
        super._();

  factory _$SeatingChartImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeatingChartImplFromJson(json);

  /// ドキュメントId
  @override
  final String docId;

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

  /// 作成日
  @override
  @JsonKey()
  @unionTimestampConverter
  final UnionTimestamp createdAt;

  @override
  String toString() {
    return 'SeatingChart(docId: $docId, seatTitle: $seatTitle, seatGroupList: $seatGroupList, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeatingChartImpl &&
            (identical(other.docId, docId) || other.docId == docId) &&
            (identical(other.seatTitle, seatTitle) ||
                other.seatTitle == seatTitle) &&
            const DeepCollectionEquality()
                .equals(other._seatGroupList, _seatGroupList) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, docId, seatTitle,
      const DeepCollectionEquality().hash(_seatGroupList), createdAt);

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
          {required final String docId,
          required final String seatTitle,
          required final List<SeatGroup> seatGroupList,
          @unionTimestampConverter final UnionTimestamp createdAt}) =
      _$SeatingChartImpl;
  const _SeatingChart._() : super._();

  factory _SeatingChart.fromJson(Map<String, dynamic> json) =
      _$SeatingChartImpl.fromJson;

  @override

  /// ドキュメントId
  String get docId;
  @override

  /// シート名
  String get seatTitle;
  @override

  /// 座席表
  List<SeatGroup> get seatGroupList;
  @override

  /// 作成日
  @unionTimestampConverter
  UnionTimestamp get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$SeatingChartImplCopyWith<_$SeatingChartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
