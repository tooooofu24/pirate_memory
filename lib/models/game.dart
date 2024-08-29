import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pirate_memory/models/card.dart';
import 'package:pirate_memory/models/card_type.dart';
import 'package:pirate_memory/models/field.dart';
import 'package:pirate_memory/models/player.dart';
import 'package:pirate_memory/models/player_color.dart';

part 'game.freezed.dart';

// ランダムなカードの生成
Random random = Random();

List<Field> initialFields = [
  ...List.generate(
    12,
    (index) => Field(
      cards: List.generate(
        random.nextInt(6), // 0から4枚のランダムなカード数
        (index) => Card(
          color: PlayerColor.values[random.nextInt(2)], // ランダムな色
          type: CardType
              .values[random.nextInt(CardType.values.length)], // ランダムなタイプ
        ),
      ),
    ),
  ),
];

List<Player> initialPlayers = [
  Player(
    color: PlayerColor.values[0],
  ),
  Player(
    color: PlayerColor.values[1],
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
