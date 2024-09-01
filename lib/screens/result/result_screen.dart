import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pirate_memory/components/card.dart';
import 'package:pirate_memory/models/player_color.dart';
import 'package:pirate_memory/notifiers/game_notifier.dart';

class ResultScreen extends ConsumerWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final game = ref.watch(gameProvider);

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: FractionallySizedBox(
              widthFactor: 0.8,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('RESULT'),
                  const SizedBox(height: 75),
                  ...List.generate(game.players.length, (index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CardWidget(
                          image: Image.asset(
                            PlayerColor.values[index].pirateImage,
                            width: 70,
                          ),
                        ),
                        const SizedBox(width: 30),
                        Text(game.players[index].point.toString()),
                      ],
                    );
                  }),
                  const SizedBox(height: 75),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: FilledButton.tonal(
                      onPressed: () {},
                      child: const Text('もう一度やる'),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: FilledButton(
                      onPressed: () {},
                      child: const Text('TOPに戻る'),
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
