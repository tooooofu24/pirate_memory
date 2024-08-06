import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pirate_memory/models/game.dart';
import 'package:pirate_memory/models/player.dart';
import 'package:pirate_memory/models/player_color.dart';

class GameNotifier extends StateNotifier<Game> {
  GameNotifier() : super(Game(players: [], fields: []));

  void setupPlayers(int playerCount) {
    final players = List.generate(
      playerCount,
      (index) => Player(
        color: PlayerColor.values[index],
      ),
    );
    state = state.copyWith(players: players);
  }

  void removePlayer(String playerName) {
    state = state.copyWith(
      players:
          state.players.where((player) => player.name != playerName).toList(),
    );
  }

  void nextTurn() {
    state = state.copyWith(turnCount: state.turnCount + 1);
  }
}

final gameProvider = StateNotifierProvider<GameNotifier, Game>((ref) {
  return GameNotifier();
});
