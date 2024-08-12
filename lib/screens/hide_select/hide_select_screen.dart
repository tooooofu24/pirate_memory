import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pirate_memory/notifiers/game_notifier.dart';

class HideSelectScreen extends ConsumerWidget {
  const HideSelectScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final game = ref.watch(gameProvider);
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: FractionallySizedBox(
              widthFactor: 0.9,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('島'),
                  GridView.count(
                    crossAxisCount: 4,
                    mainAxisSpacing: 8,
                    shrinkWrap: true,
                    children: List.generate(12, (index) {
                      return const Image(
                        image: AssetImage('assets/island.png'),
                      );
                    }),
                  ),
                  SizedBox(
                    height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: game.currentPlayer!.cards.length,
                      itemBuilder: (context, index) {
                        final card = game.currentPlayer!.cards[index];
                        return Text(card.image);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
