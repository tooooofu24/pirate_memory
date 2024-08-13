import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pirate_memory/models/card.dart';
import 'package:pirate_memory/models/card_type.dart';
import 'package:pirate_memory/models/field.dart';
import 'package:pirate_memory/models/game.dart';
import 'package:pirate_memory/models/player.dart';
import 'package:pirate_memory/models/player_color.dart';

class GameNotifier extends StateNotifier<Game> {
  GameNotifier() : super(Game(players: [], fields: []));

  List<Card> _initialCards(PlayerColor color) {
    return [
      // 1つの宝石カードは4枚
      ...List.generate(
        4,
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

  int _fieldCount(int playerCount) {
    switch (playerCount) {
      case 2:
        return 9;
      case 3:
        return 12;
      case 4:
        return 16;
      default:
        throw Exception('Invalid player count');
    }
  }

  List<Field> _initialFields(int playerCount) {
    return List.generate(
      _fieldCount(playerCount),
      (index) => Field(
        cards: [],
      ),
    );
  }

  void setupPlayers(int playerCount) {
    final players = List.generate(
      playerCount,
      (index) => Player(
        color: PlayerColor.values[index],
        cards: _initialCards(PlayerColor.values[index]),
      ),
    );
    state = state.copyWith(
      players: players,
      currentPlayer: players.first,
      fields: _initialFields(playerCount),
    );
  }

  void updatePlayers(List<Player> players) {
    state = state.copyWith(players: players);
  }

  void hide(Card card, int fieldIndex) {
    // プレイヤーのカードから選択されたカードを削除
    _useCard(card);
    // フィールドのカードを更新
    _updateField(card, fieldIndex);
    // 次のプレイヤーに交代
    _turnToNextPlayer();
  }

  void _useCard(Card card) {
    final playerCards = state.currentPlayer!.cards;
    final newPlayerCards = List<Card>.from(playerCards);
    newPlayerCards.remove(card);
    final newPlayer = state.currentPlayer!.copyWith(cards: newPlayerCards);
    state = state.copyWith(
      currentPlayer: newPlayer,
      players: [
        for (final player in state.players)
          if (player.color == state.currentPlayer!.color) newPlayer else player,
      ],
    );
  }

  void _updateField(Card card, int fieldIndex) {
    final field = state.fields[fieldIndex];
    final newField = field.copyWith(
      cards: [...field.cards, card],
    );
    final newFields = List<Field>.from(state.fields);
    newFields[fieldIndex] = newField;
    state = state.copyWith(fields: newFields);
  }

  void _turnToNextPlayer() {
    final currentPlayer = state.currentPlayer!;
    final currentPlayerIndex = state.players.indexOf(currentPlayer);
    final nextPlayerIndex = (currentPlayerIndex + 1) % state.players.length;
    state = state.copyWith(currentPlayer: state.players[nextPlayerIndex]);
  }
}

final gameProvider = StateNotifierProvider<GameNotifier, Game>((ref) {
  return GameNotifier();
});
