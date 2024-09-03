import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pirate_memory/components/card.dart';
import 'package:pirate_memory/models/card.dart' as pirate_memory_card;

class CardSelect extends StatelessWidget {
  const CardSelect({
    required this.cards,
    required this.selectedIndex,
    required this.onSelect,
    required this.primaryColor,
    super.key,
  });

  final List<pirate_memory_card.Card> cards;
  final int? selectedIndex;
  final void Function(int) onSelect;
  final Color primaryColor;

  @override
  Widget build(BuildContext context) {
    final notSelectedYet = selectedIndex == null;
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cards.length,
        itemBuilder: (context, index) {
          final card = cards[index];
          final isSelected = selectedIndex == index;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CardWidget(
              image: Image.asset(card.image),
              primaryColor: primaryColor,
              isSelected: isSelected,
              onTap: () => onSelect(index),
              disabled: !notSelectedYet && !isSelected,
            ),
          );
        },
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty<pirate_memory_card.Card>('cards', cards));
    properties.add(IntProperty('selectedIndex', selectedIndex));
    properties.add(
      ObjectFlagProperty<void Function(int p1)>.has(
        'onSelect',
        onSelect,
      ),
    );
    properties.add(ColorProperty('primaryColor', primaryColor));
  }
}
