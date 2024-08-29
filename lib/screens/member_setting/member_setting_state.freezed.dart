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
  List<Player> get players => throw _privateConstructorUsedError;

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
  $Res call({List<Player> players});
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
    Object? players = null,
  }) {
    return _then(_value.copyWith(
      players: null == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
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
  $Res call({List<Player> players});
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
    Object? players = null,
  }) {
    return _then(_$MemberSettingStateImpl(
      players: null == players
          ? _value._players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
    ));
  }
}

/// @nodoc

class _$MemberSettingStateImpl implements _MemberSettingState {
  const _$MemberSettingStateImpl({final List<Player> players = const []})
      : _players = players;

  final List<Player> _players;
  @override
  @JsonKey()
  List<Player> get players {
    if (_players is EqualUnmodifiableListView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_players);
  }

  @override
  String toString() {
    return 'MemberSettingState(players: $players)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberSettingStateImpl &&
            const DeepCollectionEquality().equals(other._players, _players));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_players));

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
  const factory _MemberSettingState({final List<Player> players}) =
      _$MemberSettingStateImpl;

  @override
  List<Player> get players;

  /// Create a copy of MemberSettingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberSettingStateImplCopyWith<_$MemberSettingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
