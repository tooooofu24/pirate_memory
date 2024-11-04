import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pirate_memory/components/card.dart';
import 'package:pirate_memory/models/player_color.dart';
import 'package:pirate_memory/notifiers/game_notifier.dart';
import 'package:pirate_memory/screens/result/result_controller.dart';

class ResultScreen extends ConsumerWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final game = ref.watch(gameProvider);
    final sortedPlayers = game.players.toList()
      ..sort((a, b) => b.point.compareTo(a.point));

    final controller = ResultController();

    return PopScope(
      canPop: false,
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('RESULT'),
                const SizedBox(height: 75),
                ...List.generate(sortedPlayers.length, (index) {
                  final rank = index + 1;
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('$rank位'),
                      SizedBox(
                        width: 150,
                        child: Center(child: Text(sortedPlayers[index].name)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: CardWidget(
                          image: Image.asset(
                            sortedPlayers[index].color.pirateImage,
                            width: 70,
                          ),
                        ),
                      ),
                      const SizedBox(width: 30),
                      Text('${sortedPlayers[index].point}点'),
                    ],
                  );
                }),
                const SizedBox(height: 75),
                FractionallySizedBox(
                  widthFactor: 0.8,
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: FilledButton(
                      onPressed: () async => controller.goHome(context, ref),
                      child: const Text('TOPに戻る'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
