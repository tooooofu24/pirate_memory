import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pirate_memory/screens/member_select/member_select_controller.dart';

class MemberSelectScreen extends ConsumerWidget {
  const MemberSelectScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(memberSelectProvider.notifier);
    final formKey = GlobalKey<FormState>();

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: FractionallySizedBox(
              widthFactor: 0.7,
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Spacer(),
                    const Text('プレイ人数を選択'),
                    DropdownButtonFormField(
                      hint: const Text('選択して下さい'),
                      onChanged: controller.onChanged,
                      validator: controller.validatePlayerCount,
                      items: controller.options.entries
                          .map(
                            (entry) => DropdownMenuItem<int>(
                              value: entry.value,
                              child: Text(entry.key),
                            ),
                          )
                          .toList(),
                    ),
                    const SizedBox(height: 15),
                    const Spacer(),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: FilledButton.tonal(
                        onPressed: () async => controller.goBack(context),
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
                        child: const Text('決定'),
                      ),
                    ),
                    const SizedBox(height: 75),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
