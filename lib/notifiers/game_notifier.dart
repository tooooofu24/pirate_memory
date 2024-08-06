import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pirate_memory/models/card.dart';
import 'package:pirate_memory/models/card_type.dart';
import 'package:pirate_memory/models/game.dart';
import 'package:pirate_memory/models/player.dart';
import 'package:pirate_memory/models/player_color.dart';

class GameNotifier extends StateNotifier<Game> {
  GameNotifier() : super(Game(players: [], fields: []));

  List<Card> _defaultCards(PlayerColor color) {
    return [
      // 1つの宝石カードは3枚
      ...List.generate(
        3,
        (index) => Card(
          color: color,
          type: CardType.singleGem,
        ),
      ),
      // 2つの宝石カードは1枚
      Card(
        color: color,
        type: CardType.doubleGem,
      ),
      // 宝箱カードは2枚
      ...List.generate(
        2,
        (index) => Card(
          color: color,
          type: CardType.treasureBox,
        ),
      ),
      // 爆弾カードは1枚
      Card(
        color: color,
        type: CardType.bomb,
      ),
    ];
  }

  void setupPlayers(int playerCount) {
    final players = List.generate(
      playerCount,
      (index) => Player(
        color: PlayerColor.values[index],
        cards: _defaultCards(PlayerColor.values[index]),
      ),
    );
    state = state.copyWith(players: players);
  }

  void updatePlayers(List<Player> players) {
    state = state.copyWith(players: players);
  }

  void nextTurn() {
    state = state.copyWith(turnCount: state.turnCount + 1);
  }
}

final gameProvider = StateNotifierProvider<GameNotifier, Game>((ref) {
  return GameNotifier();
});
