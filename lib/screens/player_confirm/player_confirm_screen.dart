import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pirate_memory/components/card.dart';
import 'package:pirate_memory/models/player_color.dart';
import 'package:pirate_memory/notifiers/game_notifier.dart';
import 'package:pirate_memory/screens/hide_select/hide_select_screen.dart';

class PlayerConfirmScreen extends ConsumerWidget {
  const PlayerConfirmScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final game = ref.watch(gameProvider);
    final currentPlayer = game.currentPlayer;

    return PopScope(
      canPop: false,
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: FractionallySizedBox(
              widthFactor: 0.7,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('あなたは${currentPlayer!.name}ですか？'),
                  const SizedBox(height: 50),
                  CardWidget(
                    image: Image(
                      image: AssetImage(currentPlayer.color.pirateImage),
                      width: 200,
                    ),
                  ),
                  const SizedBox(height: 75),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: FilledButton(
                      onPressed: () async => Navigator.push(
                        context,
                        MaterialPageRoute<HideSelectScreen>(
                          builder: (context) => const HideSelectScreen(),
                        ),
                      ),
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
