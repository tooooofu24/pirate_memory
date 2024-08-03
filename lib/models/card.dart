import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pirate_memory/models/card_type.dart';
import 'package:pirate_memory/models/player_color.dart';

part 'card.freezed.dart';

@freezed
class Card with _$Card {
  factory Card({
    required PlayerColor color,
    required CardType type,
  }) = _Card;
}
