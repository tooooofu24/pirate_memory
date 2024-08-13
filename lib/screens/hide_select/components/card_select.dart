import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cards.length,
        itemBuilder: (context, index) {
          final card = cards[index];
          final isSelected = selectedIndex == index;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: InkWell(
              onTap: () => onSelect(index),
              borderRadius: BorderRadius.circular(12),
              child: Container(
                foregroundDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: isSelected
                      ? Border.all(
                          color: primaryColor,
                          width: 6,
                        )
                      : null,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Opacity(
                    opacity: !isSelected && !notSelectedYet ? 0.60 : 1,
                    child: Image.asset(card.image),
                  ),
                ),
              ),
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
