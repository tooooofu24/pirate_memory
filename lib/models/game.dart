import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pirate_memory/models/field.dart';
import 'package:pirate_memory/models/player.dart';

part 'game.freezed.dart';

@freezed
class Game with _$Game {
  factory Game({
    @Default(0) int turnCount,
    @Default([]) List<Field> fields,
    @Default([]) List<Player> players,
  }) = _Game;
}
