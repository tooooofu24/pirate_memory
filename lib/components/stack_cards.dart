import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pirate_memory/components/card.dart';
import 'package:pirate_memory/models/card.dart' as pirate_memory_card;

class StackCards extends StatelessWidget {
  const StackCards({
    required this.cards,
    this.onTap,
    this.isSelected = false,
    super.key,
  });

  final List<pirate_memory_card.Card> cards;
  final void Function()? onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    if (cards.isEmpty) {
      return InkWell(
        onTap: onTap,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 5, right: 5),
              child: Align(
                child: Transform.translate(
                  offset: Offset.zero,
                  child: CardWidget(
                    image: Image.asset('assets/island.png'),
                    isSelected: isSelected,
                    onTap: onTap,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    // オフセットをカードの枚数に応じて動的に計算
    final offsetBase = 8.0 / cards.length;

    return InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          for (int i = 0; i < cards.length; i++)
            Padding(
              padding: const EdgeInsets.only(bottom: 5, right: 5),
              child: Align(
                child: Transform.translate(
                  offset: Offset(i * offsetBase, i * offsetBase),
                  child: CardWidget(
                    image: Image.asset('assets/card-back.png'),
                    isSelected: isSelected,
                    onTap: onTap,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ObjectFlagProperty<void Function()?>.has('onTap', onTap));
    properties.add(IterableProperty<pirate_memory_card.Card>('cards', cards));
    properties.add(DiagnosticsProperty<bool>('isSelected', isSelected));
  }
}
