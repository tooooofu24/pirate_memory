import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pirate_memory/models/player_color.dart';
import 'package:pirate_memory/notifiers/game_notifier.dart';

class PlayerConfirmScreen extends ConsumerWidget {
  const PlayerConfirmScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final game = ref.watch(gameProvider);
    final currentPlayerColor = game.currentPlayerColor;

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: FractionallySizedBox(
              widthFactor: 0.7,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('あなたは${currentPlayerColor.label}色の海賊ですか？'),
                  const SizedBox(height: 50),
                  Image(
                    image: AssetImage(currentPlayerColor.pirateImage),
                    width: 200,
                  ),
                  const SizedBox(height: 75),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: FilledButton(
                      onPressed: () {},
                      child: const Text('はい'),
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
