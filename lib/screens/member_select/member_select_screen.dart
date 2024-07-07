import 'package:flutter/material.dart';
import 'package:pirate_memory/components/button/app_fillled_button.dart';
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
                AppFilledButton(
                  onPressed: () async => controller.showPicker(context),
                  text: '2人',
                ),
                const Text('誰がどの色の海賊にするか決めてください'),
                const SizedBox(height: 15),
                const SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  child: AppFilledButton(
                    onPressed: () {},
                    text: 'スタート',
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  child: AppFilledButton(
                    backGroundColor: Colors.blue.shade50,
                    textColor: Colors.blue,
                    onPressed: () async => controller.goBack(context),
                    text: '戻る',
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
