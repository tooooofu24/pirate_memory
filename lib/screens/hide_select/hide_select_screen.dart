import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pirate_memory/models/player_color.dart';
import 'package:pirate_memory/notifiers/game_notifier.dart';
import 'package:pirate_memory/screens/hide_select/components/card_select.dart';
import 'package:pirate_memory/screens/hide_select/components/field_select.dart';
import 'package:pirate_memory/screens/hide_select/hide_select_controller.dart';

class HideSelectScreen extends ConsumerWidget {
  const HideSelectScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final game = ref.watch(gameProvider);
    final controller = ref.read(hideSelectProvider.notifier);
    final state = ref.watch(hideSelectProvider);

    return PopScope(
      canPop: false,
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: FractionallySizedBox(
              widthFactor: 0.9,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Spacer(),
                  const Text('カードを隠す島を選んでください'),
                  const SizedBox(height: 10),
                  FieldSelect(
                    fields: game.fields,
                    selectedIndex: state.selectedFieldIndex,
                    onSelect: controller.onSelectField,
                    primaryColor: game.currentPlayer!.color.color,
                  ),
                  const Spacer(),
                  const Text('島に隠すカードを選んでください'),
                  const SizedBox(height: 10),
                  CardSelect(
                    cards: game.currentPlayer!.cards,
                    selectedIndex: state.selectedCardIndex,
                    onSelect: controller.onSelectCard,
                    primaryColor: game.currentPlayer!.color.color,
                  ),
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
                    child: Opacity(
                      opacity: state.canSubmit ? 1 : 0.4,
                      child: FilledButton(
                        onPressed: () async =>
                            controller.onSubmit(context, ref),
                        child: const Text('決定'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
