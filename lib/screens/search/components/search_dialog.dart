import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pirate_memory/components/card.dart';
import 'package:pirate_memory/models/card.dart' as pirate_memory_card;

class SearchDialog extends StatelessWidget {
  const SearchDialog({
    this.onPressed,
    this.cards = const [],
    super.key,
  });

  final VoidCallback? onPressed;
  final List<pirate_memory_card.Card> cards;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              spacing: 8,
              runSpacing: 6,
              children: cards
                  .map(
                    (card) => SizedBox(
                      width: 60,
                      child: CardWidget(
                        image: Image.asset(card.image),
                      ),
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 15),
            const Text('獲得点数：'),
            const SizedBox(height: 15),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: FilledButton(
                onPressed: onPressed,
                child: const Text('閉じる'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(ObjectFlagProperty<VoidCallback?>.has('onPressed', onPressed));
    properties.add(IterableProperty<pirate_memory_card.Card>('cards', cards));
  }
}
