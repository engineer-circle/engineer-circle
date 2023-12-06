// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_seating_chart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateSeatingChartState {
  String get title => throw _privateConstructorUsedError;
  List<SeatGroup> get seats => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateSeatingChartStateCopyWith<CreateSeatingChartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSeatingChartStateCopyWith<$Res> {
  factory $CreateSeatingChartStateCopyWith(CreateSeatingChartState value,
          $Res Function(CreateSeatingChartState) then) =
      _$CreateSeatingChartStateCopyWithImpl<$Res, CreateSeatingChartState>;
  @useResult
  $Res call({String title, List<SeatGroup> seats});
}

/// @nodoc
class _$CreateSeatingChartStateCopyWithImpl<$Res,
        $Val extends CreateSeatingChartState>
    implements $CreateSeatingChartStateCopyWith<$Res> {
  _$CreateSeatingChartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? seats = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateSeatingChartStateImplCopyWith<$Res>
    implements $CreateSeatingChartStateCopyWith<$Res> {
  factory _$$CreateSeatingChartStateImplCopyWith(
          _$CreateSeatingChartStateImpl value,
          $Res Function(_$CreateSeatingChartStateImpl) then) =
      __$$CreateSeatingChartStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, List<SeatGroup> seats});
}

/// @nodoc
class __$$CreateSeatingChartStateImplCopyWithImpl<$Res>
    extends _$CreateSeatingChartStateCopyWithImpl<$Res,
        _$CreateSeatingChartStateImpl>
    implements _$$CreateSeatingChartStateImplCopyWith<$Res> {
  __$$CreateSeatingChartStateImplCopyWithImpl(
      _$CreateSeatingChartStateImpl _value,
      $Res Function(_$CreateSeatingChartStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? seats = null,
  }) {
    return _then(_$CreateSeatingChartStateImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      seats: null == seats
          ? _value._seats
          : seats // ignore: cast_nullable_to_non_nullable
              as List<SeatGroup>,
    ));
  }
}

/// @nodoc

class _$CreateSeatingChartStateImpl extends _CreateSeatingChartState {
  const _$CreateSeatingChartStateImpl(
      {this.title = '', final List<SeatGroup> seats = const []})
      : _seats = seats,
        super._();

  @override
  @JsonKey()
  final String title;
  final List<SeatGroup> _seats;
  @override
  @JsonKey()
  List<SeatGroup> get seats {
    if (_seats is EqualUnmodifiableListView) return _seats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seats);
  }

  @override
  String toString() {
    return 'CreateSeatingChartState(title: $title, seats: $seats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSeatingChartStateImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._seats, _seats));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(_seats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSeatingChartStateImplCopyWith<_$CreateSeatingChartStateImpl>
      get copyWith => __$$CreateSeatingChartStateImplCopyWithImpl<
          _$CreateSeatingChartStateImpl>(this, _$identity);
}

abstract class _CreateSeatingChartState extends CreateSeatingChartState {
  const factory _CreateSeatingChartState(
      {final String title,
      final List<SeatGroup> seats}) = _$CreateSeatingChartStateImpl;
  const _CreateSeatingChartState._() : super._();

  @override
  String get title;
  @override
  List<SeatGroup> get seats;
  @override
  @JsonKey(ignore: true)
  _$$CreateSeatingChartStateImplCopyWith<_$CreateSeatingChartStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
