import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pirate_memory/models/game.dart';
import 'package:pirate_memory/models/player.dart';

class GameNotifier extends StateNotifier<Game> {
  GameNotifier() : super(Game(players: [], turnCount: 0, fields: []));

  void addPlayer(Player player) {
    state = state.copyWith(players: [...state.players, player]);
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
