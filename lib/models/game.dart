import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pirate_memory/models/card.dart';
import 'package:pirate_memory/models/card_type.dart';
import 'package:pirate_memory/models/field.dart';
import 'package:pirate_memory/models/player.dart';
import 'package:pirate_memory/models/player_color.dart';

part 'game.freezed.dart';

List<Field> initialFields = [
  ...List.generate(
    12,
    (index) => Field(
      cards: List.generate(
        index,
        (index) => Card(color: PlayerColor.red, type: CardType.singleGem),
      ),
    ),
  ),
];

List<Player> initialPlayers = [
  Player(
    color: PlayerColor.red,
  ),
  Player(
    color: PlayerColor.blue,
  ),
];

@freezed
class Game with _$Game {
  factory Game({
    @Default([]) List<Field> fields,
    @Default([]) List<Player> players,
    Player? currentPlayer,
  }) = _Game;

  factory Game.mock() => Game(
        fields: initialFields,
        players: initialPlayers,
        currentPlayer: initialPlayers.first,
      );
}
