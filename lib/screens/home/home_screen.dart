import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pirate_memory/screens/home/components/how_to_play_dialog.dart';
import 'package:pirate_memory/screens/home/home_controller.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = HomeController();
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: Center(
          child: FractionallySizedBox(
            widthFactor: 0.7,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Image(
                  image: AssetImage('assets/logo-square.png'),
                  width: 200,
                  height: 200,
                ),
                const SizedBox(height: 75),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: FilledButton.tonal(
                    onPressed: () async => showDialog(
                      context: context,
                      builder: (context) => const HowToPlayDialog(),
                    ),
                    child: const Text('遊び方'),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: FilledButton(
                    onPressed: () async => controller.startGame(context),
                    child: const Text('ゲームを始める'),
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
