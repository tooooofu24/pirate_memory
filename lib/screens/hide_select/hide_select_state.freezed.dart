// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hide_select_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HideSelectState {
  int? get selectedFieldIndex => throw _privateConstructorUsedError;
  int? get selectedCardIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HideSelectStateCopyWith<HideSelectState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HideSelectStateCopyWith<$Res> {
  factory $HideSelectStateCopyWith(
          HideSelectState value, $Res Function(HideSelectState) then) =
      _$HideSelectStateCopyWithImpl<$Res, HideSelectState>;
  @useResult
  $Res call({int? selectedFieldIndex, int? selectedCardIndex});
}

/// @nodoc
class _$HideSelectStateCopyWithImpl<$Res, $Val extends HideSelectState>
    implements $HideSelectStateCopyWith<$Res> {
  _$HideSelectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedFieldIndex = freezed,
    Object? selectedCardIndex = freezed,
  }) {
    return _then(_value.copyWith(
      selectedFieldIndex: freezed == selectedFieldIndex
          ? _value.selectedFieldIndex
          : selectedFieldIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedCardIndex: freezed == selectedCardIndex
          ? _value.selectedCardIndex
          : selectedCardIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HideSelectStateImplCopyWith<$Res>
    implements $HideSelectStateCopyWith<$Res> {
  factory _$$HideSelectStateImplCopyWith(_$HideSelectStateImpl value,
          $Res Function(_$HideSelectStateImpl) then) =
      __$$HideSelectStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? selectedFieldIndex, int? selectedCardIndex});
}

/// @nodoc
class __$$HideSelectStateImplCopyWithImpl<$Res>
    extends _$HideSelectStateCopyWithImpl<$Res, _$HideSelectStateImpl>
    implements _$$HideSelectStateImplCopyWith<$Res> {
  __$$HideSelectStateImplCopyWithImpl(
      _$HideSelectStateImpl _value, $Res Function(_$HideSelectStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedFieldIndex = freezed,
    Object? selectedCardIndex = freezed,
  }) {
    return _then(_$HideSelectStateImpl(
      selectedFieldIndex: freezed == selectedFieldIndex
          ? _value.selectedFieldIndex
          : selectedFieldIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedCardIndex: freezed == selectedCardIndex
          ? _value.selectedCardIndex
          : selectedCardIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$HideSelectStateImpl extends _HideSelectState {
  const _$HideSelectStateImpl({this.selectedFieldIndex, this.selectedCardIndex})
      : super._();

  @override
  final int? selectedFieldIndex;
  @override
  final int? selectedCardIndex;

  @override
  String toString() {
    return 'HideSelectState(selectedFieldIndex: $selectedFieldIndex, selectedCardIndex: $selectedCardIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HideSelectStateImpl &&
            (identical(other.selectedFieldIndex, selectedFieldIndex) ||
                other.selectedFieldIndex == selectedFieldIndex) &&
            (identical(other.selectedCardIndex, selectedCardIndex) ||
                other.selectedCardIndex == selectedCardIndex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, selectedFieldIndex, selectedCardIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HideSelectStateImplCopyWith<_$HideSelectStateImpl> get copyWith =>
      __$$HideSelectStateImplCopyWithImpl<_$HideSelectStateImpl>(
          this, _$identity);
}

abstract class _HideSelectState extends HideSelectState {
  const factory _HideSelectState(
      {final int? selectedFieldIndex,
      final int? selectedCardIndex}) = _$HideSelectStateImpl;
  const _HideSelectState._() : super._();

  @override
  int? get selectedFieldIndex;
  @override
  int? get selectedCardIndex;
  @override
  @JsonKey(ignore: true)
  _$$HideSelectStateImplCopyWith<_$HideSelectStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
