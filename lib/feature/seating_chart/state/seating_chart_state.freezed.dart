// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seating_chart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SeatingChartStateSuccess {
// 行と列で構成される2次元配列
  List<List<SeatGroup>> get seatGroupMatrix =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SeatingChartStateSuccessCopyWith<SeatingChartStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeatingChartStateSuccessCopyWith<$Res> {
  factory $SeatingChartStateSuccessCopyWith(SeatingChartStateSuccess value,
          $Res Function(SeatingChartStateSuccess) then) =
      _$SeatingChartStateSuccessCopyWithImpl<$Res, SeatingChartStateSuccess>;
  @useResult
  $Res call({List<List<SeatGroup>> seatGroupMatrix});
}

/// @nodoc
class _$SeatingChartStateSuccessCopyWithImpl<$Res,
        $Val extends SeatingChartStateSuccess>
    implements $SeatingChartStateSuccessCopyWith<$Res> {
  _$SeatingChartStateSuccessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seatGroupMatrix = null,
  }) {
    return _then(_value.copyWith(
      seatGroupMatrix: null == seatGroupMatrix
          ? _value.seatGroupMatrix
          : seatGroupMatrix // ignore: cast_nullable_to_non_nullable
              as List<List<SeatGroup>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeatingChartStateSuccessImplCopyWith<$Res>
    implements $SeatingChartStateSuccessCopyWith<$Res> {
  factory _$$SeatingChartStateSuccessImplCopyWith(
          _$SeatingChartStateSuccessImpl value,
          $Res Function(_$SeatingChartStateSuccessImpl) then) =
      __$$SeatingChartStateSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<List<SeatGroup>> seatGroupMatrix});
}

/// @nodoc
class __$$SeatingChartStateSuccessImplCopyWithImpl<$Res>
    extends _$SeatingChartStateSuccessCopyWithImpl<$Res,
        _$SeatingChartStateSuccessImpl>
    implements _$$SeatingChartStateSuccessImplCopyWith<$Res> {
  __$$SeatingChartStateSuccessImplCopyWithImpl(
      _$SeatingChartStateSuccessImpl _value,
      $Res Function(_$SeatingChartStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seatGroupMatrix = null,
  }) {
    return _then(_$SeatingChartStateSuccessImpl(
      seatGroupMatrix: null == seatGroupMatrix
          ? _value._seatGroupMatrix
          : seatGroupMatrix // ignore: cast_nullable_to_non_nullable
              as List<List<SeatGroup>>,
    ));
  }
}

/// @nodoc

class _$SeatingChartStateSuccessImpl implements _SeatingChartStateSuccess {
  const _$SeatingChartStateSuccessImpl(
      {required final List<List<SeatGroup>> seatGroupMatrix})
      : _seatGroupMatrix = seatGroupMatrix;

// 行と列で構成される2次元配列
  final List<List<SeatGroup>> _seatGroupMatrix;
// 行と列で構成される2次元配列
  @override
  List<List<SeatGroup>> get seatGroupMatrix {
    if (_seatGroupMatrix is EqualUnmodifiableListView) return _seatGroupMatrix;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seatGroupMatrix);
  }

  @override
  String toString() {
    return 'SeatingChartStateSuccess(seatGroupMatrix: $seatGroupMatrix)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeatingChartStateSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._seatGroupMatrix, _seatGroupMatrix));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_seatGroupMatrix));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeatingChartStateSuccessImplCopyWith<_$SeatingChartStateSuccessImpl>
      get copyWith => __$$SeatingChartStateSuccessImplCopyWithImpl<
          _$SeatingChartStateSuccessImpl>(this, _$identity);
}

abstract class _SeatingChartStateSuccess implements SeatingChartStateSuccess {
  const factory _SeatingChartStateSuccess(
          {required final List<List<SeatGroup>> seatGroupMatrix}) =
      _$SeatingChartStateSuccessImpl;

  @override // 行と列で構成される2次元配列
  List<List<SeatGroup>> get seatGroupMatrix;
  @override
  @JsonKey(ignore: true)
  _$$SeatingChartStateSuccessImplCopyWith<_$SeatingChartStateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
