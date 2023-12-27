// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seat_title_view_property.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SeatTitleViewProperty {
  String get docId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SeatTitleViewPropertyCopyWith<SeatTitleViewProperty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeatTitleViewPropertyCopyWith<$Res> {
  factory $SeatTitleViewPropertyCopyWith(SeatTitleViewProperty value,
          $Res Function(SeatTitleViewProperty) then) =
      _$SeatTitleViewPropertyCopyWithImpl<$Res, SeatTitleViewProperty>;
  @useResult
  $Res call({String docId, String title});
}

/// @nodoc
class _$SeatTitleViewPropertyCopyWithImpl<$Res,
        $Val extends SeatTitleViewProperty>
    implements $SeatTitleViewPropertyCopyWith<$Res> {
  _$SeatTitleViewPropertyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docId = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      docId: null == docId
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeatTitleViewPropertyImplCopyWith<$Res>
    implements $SeatTitleViewPropertyCopyWith<$Res> {
  factory _$$SeatTitleViewPropertyImplCopyWith(
          _$SeatTitleViewPropertyImpl value,
          $Res Function(_$SeatTitleViewPropertyImpl) then) =
      __$$SeatTitleViewPropertyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String docId, String title});
}

/// @nodoc
class __$$SeatTitleViewPropertyImplCopyWithImpl<$Res>
    extends _$SeatTitleViewPropertyCopyWithImpl<$Res,
        _$SeatTitleViewPropertyImpl>
    implements _$$SeatTitleViewPropertyImplCopyWith<$Res> {
  __$$SeatTitleViewPropertyImplCopyWithImpl(_$SeatTitleViewPropertyImpl _value,
      $Res Function(_$SeatTitleViewPropertyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docId = null,
    Object? title = null,
  }) {
    return _then(_$SeatTitleViewPropertyImpl(
      docId: null == docId
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SeatTitleViewPropertyImpl implements _SeatTitleViewProperty {
  const _$SeatTitleViewPropertyImpl({required this.docId, required this.title});

  @override
  final String docId;
  @override
  final String title;

  @override
  String toString() {
    return 'SeatTitleViewProperty(docId: $docId, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeatTitleViewPropertyImpl &&
            (identical(other.docId, docId) || other.docId == docId) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, docId, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeatTitleViewPropertyImplCopyWith<_$SeatTitleViewPropertyImpl>
      get copyWith => __$$SeatTitleViewPropertyImplCopyWithImpl<
          _$SeatTitleViewPropertyImpl>(this, _$identity);
}

abstract class _SeatTitleViewProperty implements SeatTitleViewProperty {
  const factory _SeatTitleViewProperty(
      {required final String docId,
      required final String title}) = _$SeatTitleViewPropertyImpl;

  @override
  String get docId;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$SeatTitleViewPropertyImplCopyWith<_$SeatTitleViewPropertyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
