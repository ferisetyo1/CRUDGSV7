// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filterresult.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FilterOrderResult {
  int? get parentId => throw _privateConstructorUsedError;
  int? get childrenId => throw _privateConstructorUsedError;
  DateTime? get start => throw _privateConstructorUsedError;
  DateTime? get end => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterOrderResultCopyWith<FilterOrderResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterOrderResultCopyWith<$Res> {
  factory $FilterOrderResultCopyWith(
          FilterOrderResult value, $Res Function(FilterOrderResult) then) =
      _$FilterOrderResultCopyWithImpl<$Res, FilterOrderResult>;
  @useResult
  $Res call({int? parentId, int? childrenId, DateTime? start, DateTime? end});
}

/// @nodoc
class _$FilterOrderResultCopyWithImpl<$Res, $Val extends FilterOrderResult>
    implements $FilterOrderResultCopyWith<$Res> {
  _$FilterOrderResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parentId = freezed,
    Object? childrenId = freezed,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_value.copyWith(
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      childrenId: freezed == childrenId
          ? _value.childrenId
          : childrenId // ignore: cast_nullable_to_non_nullable
              as int?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterOrderResultImplCopyWith<$Res>
    implements $FilterOrderResultCopyWith<$Res> {
  factory _$$FilterOrderResultImplCopyWith(_$FilterOrderResultImpl value,
          $Res Function(_$FilterOrderResultImpl) then) =
      __$$FilterOrderResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? parentId, int? childrenId, DateTime? start, DateTime? end});
}

/// @nodoc
class __$$FilterOrderResultImplCopyWithImpl<$Res>
    extends _$FilterOrderResultCopyWithImpl<$Res, _$FilterOrderResultImpl>
    implements _$$FilterOrderResultImplCopyWith<$Res> {
  __$$FilterOrderResultImplCopyWithImpl(_$FilterOrderResultImpl _value,
      $Res Function(_$FilterOrderResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parentId = freezed,
    Object? childrenId = freezed,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_$FilterOrderResultImpl(
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      childrenId: freezed == childrenId
          ? _value.childrenId
          : childrenId // ignore: cast_nullable_to_non_nullable
              as int?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$FilterOrderResultImpl implements _FilterOrderResult {
  _$FilterOrderResultImpl(
      {this.parentId, this.childrenId, this.start, this.end});

  @override
  final int? parentId;
  @override
  final int? childrenId;
  @override
  final DateTime? start;
  @override
  final DateTime? end;

  @override
  String toString() {
    return 'FilterOrderResult(parentId: $parentId, childrenId: $childrenId, start: $start, end: $end)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterOrderResultImpl &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.childrenId, childrenId) ||
                other.childrenId == childrenId) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, parentId, childrenId, start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterOrderResultImplCopyWith<_$FilterOrderResultImpl> get copyWith =>
      __$$FilterOrderResultImplCopyWithImpl<_$FilterOrderResultImpl>(
          this, _$identity);
}

abstract class _FilterOrderResult implements FilterOrderResult {
  factory _FilterOrderResult(
      {final int? parentId,
      final int? childrenId,
      final DateTime? start,
      final DateTime? end}) = _$FilterOrderResultImpl;

  @override
  int? get parentId;
  @override
  int? get childrenId;
  @override
  DateTime? get start;
  @override
  DateTime? get end;
  @override
  @JsonKey(ignore: true)
  _$$FilterOrderResultImplCopyWith<_$FilterOrderResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
