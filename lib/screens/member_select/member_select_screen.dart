import 'package:flutter/material.dart';
import 'package:pirate_memory/screens/member_select/member_select_controller.dart';

class MemberSelectScreen extends StatelessWidget {
  const MemberSelectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = MemberSelectController();
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: FractionallySizedBox(
            widthFactor: 0.7,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('プレイ人数を選択'),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: FilledButton(
                    onPressed: () async => controller.showPicker(context),
                    child: const Text('2人'),
                  ),
                ),
                const Text('誰がどの色の海賊にするか決めてください'),
                const SizedBox(height: 15),
                const SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: FilledButton(
                    onPressed: () {},
                    child: const Text('スタート'),
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: FilledButton.tonal(
                    onPressed: () async => controller.goBack(context),
                    child: const Text('戻る'),
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
