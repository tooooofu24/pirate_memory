// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Game {
  int get turnCount => throw _privateConstructorUsedError;
  List<Field> get fields => throw _privateConstructorUsedError;
  List<Player> get players => throw _privateConstructorUsedError;
  PlayerColor get currentPlayerColor => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameCopyWith<Game> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameCopyWith<$Res> {
  factory $GameCopyWith(Game value, $Res Function(Game) then) =
      _$GameCopyWithImpl<$Res, Game>;
  @useResult
  $Res call(
      {int turnCount,
      List<Field> fields,
      List<Player> players,
      PlayerColor currentPlayerColor});
}

/// @nodoc
class _$GameCopyWithImpl<$Res, $Val extends Game>
    implements $GameCopyWith<$Res> {
  _$GameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? turnCount = null,
    Object? fields = null,
    Object? players = null,
    Object? currentPlayerColor = null,
  }) {
    return _then(_value.copyWith(
      turnCount: null == turnCount
          ? _value.turnCount
          : turnCount // ignore: cast_nullable_to_non_nullable
              as int,
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<Field>,
      players: null == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
      currentPlayerColor: null == currentPlayerColor
          ? _value.currentPlayerColor
          : currentPlayerColor // ignore: cast_nullable_to_non_nullable
              as PlayerColor,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameImplCopyWith<$Res> implements $GameCopyWith<$Res> {
  factory _$$GameImplCopyWith(
          _$GameImpl value, $Res Function(_$GameImpl) then) =
      __$$GameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int turnCount,
      List<Field> fields,
      List<Player> players,
      PlayerColor currentPlayerColor});
}

/// @nodoc
class __$$GameImplCopyWithImpl<$Res>
    extends _$GameCopyWithImpl<$Res, _$GameImpl>
    implements _$$GameImplCopyWith<$Res> {
  __$$GameImplCopyWithImpl(_$GameImpl _value, $Res Function(_$GameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? turnCount = null,
    Object? fields = null,
    Object? players = null,
    Object? currentPlayerColor = null,
  }) {
    return _then(_$GameImpl(
      turnCount: null == turnCount
          ? _value.turnCount
          : turnCount // ignore: cast_nullable_to_non_nullable
              as int,
      fields: null == fields
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<Field>,
      players: null == players
          ? _value._players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
      currentPlayerColor: null == currentPlayerColor
          ? _value.currentPlayerColor
          : currentPlayerColor // ignore: cast_nullable_to_non_nullable
              as PlayerColor,
    ));
  }
}

/// @nodoc

class _$GameImpl implements _Game {
  _$GameImpl(
      {this.turnCount = 0,
      final List<Field> fields = const [],
      final List<Player> players = const [],
      this.currentPlayerColor = PlayerColor.blue})
      : _fields = fields,
        _players = players;

  @override
  @JsonKey()
  final int turnCount;
  final List<Field> _fields;
  @override
  @JsonKey()
  List<Field> get fields {
    if (_fields is EqualUnmodifiableListView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fields);
  }

  final List<Player> _players;
  @override
  @JsonKey()
  List<Player> get players {
    if (_players is EqualUnmodifiableListView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_players);
  }

  @override
  @JsonKey()
  final PlayerColor currentPlayerColor;

  @override
  String toString() {
    return 'Game(turnCount: $turnCount, fields: $fields, players: $players, currentPlayerColor: $currentPlayerColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameImpl &&
            (identical(other.turnCount, turnCount) ||
                other.turnCount == turnCount) &&
            const DeepCollectionEquality().equals(other._fields, _fields) &&
            const DeepCollectionEquality().equals(other._players, _players) &&
            (identical(other.currentPlayerColor, currentPlayerColor) ||
                other.currentPlayerColor == currentPlayerColor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      turnCount,
      const DeepCollectionEquality().hash(_fields),
      const DeepCollectionEquality().hash(_players),
      currentPlayerColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      __$$GameImplCopyWithImpl<_$GameImpl>(this, _$identity);
}

abstract class _Game implements Game {
  factory _Game(
      {final int turnCount,
      final List<Field> fields,
      final List<Player> players,
      final PlayerColor currentPlayerColor}) = _$GameImpl;

  @override
  int get turnCount;
  @override
  List<Field> get fields;
  @override
  List<Player> get players;
  @override
  PlayerColor get currentPlayerColor;
  @override
  @JsonKey(ignore: true)
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
