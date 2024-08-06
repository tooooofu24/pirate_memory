import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MemberSettingScreen extends ConsumerWidget {
  const MemberSettingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      home: Scaffold(
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
                    onPressed: () => {},
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
                    onPressed: () => {},
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
