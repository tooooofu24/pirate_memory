import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pirate_memory/models/card.dart';
import 'package:pirate_memory/models/card_type.dart';
import 'package:pirate_memory/models/field.dart';
import 'package:pirate_memory/models/game.dart';
import 'package:pirate_memory/models/player.dart';
import 'package:pirate_memory/models/player_color.dart';

class GameNotifier extends StateNotifier<Game> {
  // GameNotifier() : super(Game.mock());
  GameNotifier() : super(Game());

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
        name: 'プレイヤー${index + 1}',
      ),
    );
    state = state.copyWith(
      players: players,
      currentPlayer: players.first,
      fields: _initialFields(playerCount),
    );
  }

  void updatePlayerNames(List<String> names) {
    final players = state.players;
    final newPlayers = List<Player>.from(players);
    for (var i = 0; i < players.length; i++) {
      newPlayers[i] = players[i].copyWith(name: names[i]);
    }
    state = state.copyWith(players: newPlayers);
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
    final nextPlayer = _findNextPlayer();
    state = state.copyWith(currentPlayer: nextPlayer);
  }

  Player _findNextPlayer() {
    final currentPlayer = state.currentPlayer!;
    final currentPlayerIndex = state.players.indexOf(currentPlayer);
    final nextPlayerIndex = (currentPlayerIndex + 1) % state.players.length;
    return state.players[nextPlayerIndex];
  }

  bool search(int fieldIndex) {
    final field = state.fields[fieldIndex];
    final cards = field.cards;
    final point = calculatePoint(cards);
    final currentPlayer = state.currentPlayer!;
    final newPlayer = currentPlayer.copyWith(
      searchCount: currentPlayer.searchCount + 1,
      point: currentPlayer.point + point,
    );
    state = state.copyWith(
      currentPlayer: newPlayer,
      players: [
        for (final player in state.players)
          if (player.color == currentPlayer.color) newPlayer else player,
      ],
    );
    // フィールドをクリア
    _clearField(fieldIndex);
    final nextPlayer = _findNextPlayer();
    // 全員が3回探したらボーナスフェーズに移行
    if (nextPlayer.searchCount == 3) {
      state = state.copyWith(isBonusPhase: true);
    }
    // 次のプレイヤーに交代
    _turnToNextPlayer();
    final isLastField = state.fields.every((field) => field.cards.isEmpty);
    return isLastField;
  }

  void _clearField(int fieldIndex) {
    final newFields = List<Field>.from(state.fields);
    newFields[fieldIndex] = Field(cards: []);
    state = state.copyWith(fields: newFields);
  }

  int calculatePoint(List<Card> cards) {
    var total = 0;
    for (final color in PlayerColor.values) {
      final isCurrentPlayerColor = state.currentPlayer!.color == color;
      // 自分の色のカードは得点計算しない
      if (isCurrentPlayerColor) {
        continue;
      }
      final point = calculatePointByColor(cards, color);
      // 得点を加算
      total += point;
    }
    return total;
  }

  void getBonusPoint(List<Card> cards) {
    // 残っている自分のカードの2倍の得点を加算
    state = state.copyWith(
      players: [
        for (final player in state.players)
          player.copyWith(
            point:
                player.point + (calculatePointByColor(cards, player.color) * 2),
          ),
      ],
    );
  }

  int calculatePointByColor(List<Card> cards, PlayerColor color) {
    final filteredCards = cards.where((card) => card.color == color);
    if (filteredCards.isEmpty) {
      return 0;
    }

    final includesTreasureBox =
        filteredCards.any((card) => card.type == CardType.treasureBox);
    final includesBomb =
        filteredCards.any((card) => card.type == CardType.bomb);

    // 爆弾カードがある && 宝箱カードがない => 得点なし
    if (includesBomb && !includesTreasureBox) {
      return 0;
    }

    final point = filteredCards
        .map((card) => card.type.point)
        .reduce((value, element) => value + element);
    return point;
  }

  void reset() {
    state = Game.mock();
  }
}

final gameProvider = StateNotifierProvider<GameNotifier, Game>((ref) {
  return GameNotifier();
});
