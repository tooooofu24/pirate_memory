import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pirate_memory/models/card.dart';

part 'field.freezed.dart';

@freezed
class Field with _$Field {
  factory Field({
    required List<Card> cards,
  }) = _Field;
}
