// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_setting_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MemberSettingState {
  List<String> get playerNames => throw _privateConstructorUsedError;

  /// Create a copy of MemberSettingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberSettingStateCopyWith<MemberSettingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberSettingStateCopyWith<$Res> {
  factory $MemberSettingStateCopyWith(
          MemberSettingState value, $Res Function(MemberSettingState) then) =
      _$MemberSettingStateCopyWithImpl<$Res, MemberSettingState>;
  @useResult
  $Res call({List<String> playerNames});
}

/// @nodoc
class _$MemberSettingStateCopyWithImpl<$Res, $Val extends MemberSettingState>
    implements $MemberSettingStateCopyWith<$Res> {
  _$MemberSettingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemberSettingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerNames = null,
  }) {
    return _then(_value.copyWith(
      playerNames: null == playerNames
          ? _value.playerNames
          : playerNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemberSettingStateImplCopyWith<$Res>
    implements $MemberSettingStateCopyWith<$Res> {
  factory _$$MemberSettingStateImplCopyWith(_$MemberSettingStateImpl value,
          $Res Function(_$MemberSettingStateImpl) then) =
      __$$MemberSettingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> playerNames});
}

/// @nodoc
class __$$MemberSettingStateImplCopyWithImpl<$Res>
    extends _$MemberSettingStateCopyWithImpl<$Res, _$MemberSettingStateImpl>
    implements _$$MemberSettingStateImplCopyWith<$Res> {
  __$$MemberSettingStateImplCopyWithImpl(_$MemberSettingStateImpl _value,
      $Res Function(_$MemberSettingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemberSettingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerNames = null,
  }) {
    return _then(_$MemberSettingStateImpl(
      playerNames: null == playerNames
          ? _value._playerNames
          : playerNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$MemberSettingStateImpl implements _MemberSettingState {
  const _$MemberSettingStateImpl({final List<String> playerNames = const []})
      : _playerNames = playerNames;

  final List<String> _playerNames;
  @override
  @JsonKey()
  List<String> get playerNames {
    if (_playerNames is EqualUnmodifiableListView) return _playerNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playerNames);
  }

  @override
  String toString() {
    return 'MemberSettingState(playerNames: $playerNames)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberSettingStateImpl &&
            const DeepCollectionEquality()
                .equals(other._playerNames, _playerNames));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_playerNames));

  /// Create a copy of MemberSettingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberSettingStateImplCopyWith<_$MemberSettingStateImpl> get copyWith =>
      __$$MemberSettingStateImplCopyWithImpl<_$MemberSettingStateImpl>(
          this, _$identity);
}

abstract class _MemberSettingState implements MemberSettingState {
  const factory _MemberSettingState({final List<String> playerNames}) =
      _$MemberSettingStateImpl;

  @override
  List<String> get playerNames;

  /// Create a copy of MemberSettingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberSettingStateImplCopyWith<_$MemberSettingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
