import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pirate_memory/components/button/app_fillled_button.dart';
import 'package:pirate_memory/screens/home/home_controller.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = HomeController();
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
                const SizedBox(
                  height: 75,
                ),
                SizedBox(
                  width: double.infinity,
                  child: AppFilledButton(
                    backGroundColor: Colors.blue.shade50,
                    textColor: Colors.blue,
                    onPressed: () {},
                    text: '遊び方',
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: double.infinity,
                  child: AppFilledButton(
                    onPressed: () async => controller.startGame(context),
                    text: 'ゲームを始める',
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
