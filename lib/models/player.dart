import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pirate_memory/models/card.dart';
import 'package:pirate_memory/models/player_color.dart';

part 'player.freezed.dart';

@freezed
class Player with _$Player {
  factory Player({
    required String name,
    required PlayerColor color,
    required List<Card> cards,
  }) = _Player;
}
