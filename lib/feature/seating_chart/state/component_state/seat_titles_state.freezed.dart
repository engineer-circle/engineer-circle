// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seat_titles_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SeatTitlesStateSuccess {
  List<String> get titles => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SeatTitlesStateSuccessCopyWith<SeatTitlesStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeatTitlesStateSuccessCopyWith<$Res> {
  factory $SeatTitlesStateSuccessCopyWith(SeatTitlesStateSuccess value,
          $Res Function(SeatTitlesStateSuccess) then) =
      _$SeatTitlesStateSuccessCopyWithImpl<$Res, SeatTitlesStateSuccess>;
  @useResult
  $Res call({List<String> titles});
}

/// @nodoc
class _$SeatTitlesStateSuccessCopyWithImpl<$Res,
        $Val extends SeatTitlesStateSuccess>
    implements $SeatTitlesStateSuccessCopyWith<$Res> {
  _$SeatTitlesStateSuccessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titles = null,
  }) {
    return _then(_value.copyWith(
      titles: null == titles
          ? _value.titles
          : titles // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeatTitlesStateSuccessImplCopyWith<$Res>
    implements $SeatTitlesStateSuccessCopyWith<$Res> {
  factory _$$SeatTitlesStateSuccessImplCopyWith(
          _$SeatTitlesStateSuccessImpl value,
          $Res Function(_$SeatTitlesStateSuccessImpl) then) =
      __$$SeatTitlesStateSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> titles});
}

/// @nodoc
class __$$SeatTitlesStateSuccessImplCopyWithImpl<$Res>
    extends _$SeatTitlesStateSuccessCopyWithImpl<$Res,
        _$SeatTitlesStateSuccessImpl>
    implements _$$SeatTitlesStateSuccessImplCopyWith<$Res> {
  __$$SeatTitlesStateSuccessImplCopyWithImpl(
      _$SeatTitlesStateSuccessImpl _value,
      $Res Function(_$SeatTitlesStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titles = null,
  }) {
    return _then(_$SeatTitlesStateSuccessImpl(
      titles: null == titles
          ? _value._titles
          : titles // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$SeatTitlesStateSuccessImpl implements _SeatTitlesStateSuccess {
  const _$SeatTitlesStateSuccessImpl({required final List<String> titles})
      : _titles = titles;

  final List<String> _titles;
  @override
  List<String> get titles {
    if (_titles is EqualUnmodifiableListView) return _titles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_titles);
  }

  @override
  String toString() {
    return 'SeatTitlesStateSuccess(titles: $titles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeatTitlesStateSuccessImpl &&
            const DeepCollectionEquality().equals(other._titles, _titles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_titles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeatTitlesStateSuccessImplCopyWith<_$SeatTitlesStateSuccessImpl>
      get copyWith => __$$SeatTitlesStateSuccessImplCopyWithImpl<
          _$SeatTitlesStateSuccessImpl>(this, _$identity);
}

abstract class _SeatTitlesStateSuccess implements SeatTitlesStateSuccess {
  const factory _SeatTitlesStateSuccess({required final List<String> titles}) =
      _$SeatTitlesStateSuccessImpl;

  @override
  List<String> get titles;
  @override
  @JsonKey(ignore: true)
  _$$SeatTitlesStateSuccessImplCopyWith<_$SeatTitlesStateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
