import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pirate_memory/models/player_color.dart';
import 'package:pirate_memory/notifiers/game_notifier.dart';
import 'package:pirate_memory/screens/member_setting/member_setting_controller.dart';

class MemberSettingScreen extends ConsumerWidget {
  const MemberSettingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(memberSettingProvider.notifier);
    final game = ref.watch(gameProvider);
    final formKey = GlobalKey<FormState>();

    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: SafeArea(
            child: Center(
              child: FractionallySizedBox(
                widthFactor: 0.9,
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Spacer(),
                      const Text('プレイヤーの名前を入力して下さい'),
                      const SizedBox(height: 30),
                      ...List.generate(
                        game.players.length,
                        (index) {
                          final player = game.players[index];
                          return ListTile(
                            leading: Image(
                              image: AssetImage(player.color.pirateImage),
                            ),
                            title: TextFormField(
                              onChanged: (value) => {},
                              validator: controller.validatePlayerName,
                              initialValue: 'プレイヤー${player.color.label}',
                              decoration: InputDecoration(
                                hintText: '名前を入力して下さい',
                                labelText: '${player.color.label}色の海賊',
                              ),
                            ),
                          );
                        },
                      ),
                      const Spacer(),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: FilledButton.tonal(
                          onPressed: () => controller.goBack(context),
                          child: const Text('戻る'),
                        ),
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: FilledButton(
                          onPressed: () async {
                            if (formKey.currentState != null &&
                                formKey.currentState!.validate()) {
                              await controller.onSubmit(context, ref);
                            }
                          },
                          child: const Text('スタート'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
