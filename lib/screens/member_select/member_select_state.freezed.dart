// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_select_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MemberSelectState {
  int? get count => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MemberSelectStateCopyWith<MemberSelectState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberSelectStateCopyWith<$Res> {
  factory $MemberSelectStateCopyWith(
          MemberSelectState value, $Res Function(MemberSelectState) then) =
      _$MemberSelectStateCopyWithImpl<$Res, MemberSelectState>;
  @useResult
  $Res call({int? count});
}

/// @nodoc
class _$MemberSelectStateCopyWithImpl<$Res, $Val extends MemberSelectState>
    implements $MemberSelectStateCopyWith<$Res> {
  _$MemberSelectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemberSelectStateImplCopyWith<$Res>
    implements $MemberSelectStateCopyWith<$Res> {
  factory _$$MemberSelectStateImplCopyWith(_$MemberSelectStateImpl value,
          $Res Function(_$MemberSelectStateImpl) then) =
      __$$MemberSelectStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? count});
}

/// @nodoc
class __$$MemberSelectStateImplCopyWithImpl<$Res>
    extends _$MemberSelectStateCopyWithImpl<$Res, _$MemberSelectStateImpl>
    implements _$$MemberSelectStateImplCopyWith<$Res> {
  __$$MemberSelectStateImplCopyWithImpl(_$MemberSelectStateImpl _value,
      $Res Function(_$MemberSelectStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(_$MemberSelectStateImpl(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$MemberSelectStateImpl implements _MemberSelectState {
  const _$MemberSelectStateImpl({this.count});

  @override
  final int? count;

  @override
  String toString() {
    return 'MemberSelectState(count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberSelectStateImpl &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberSelectStateImplCopyWith<_$MemberSelectStateImpl> get copyWith =>
      __$$MemberSelectStateImplCopyWithImpl<_$MemberSelectStateImpl>(
          this, _$identity);
}

abstract class _MemberSelectState implements MemberSelectState {
  const factory _MemberSelectState({final int? count}) =
      _$MemberSelectStateImpl;

  @override
  int? get count;
  @override
  @JsonKey(ignore: true)
  _$$MemberSelectStateImplCopyWith<_$MemberSelectStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
