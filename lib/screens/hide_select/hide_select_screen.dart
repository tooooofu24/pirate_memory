import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pirate_memory/notifiers/game_notifier.dart';
import 'package:pirate_memory/screens/hide_select/hide_select_controller.dart';

class HideSelectScreen extends ConsumerWidget {
  const HideSelectScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final game = ref.watch(gameProvider);
    final controller = ref.read(hideSelectProvider.notifier);
    final state = ref.watch(hideSelectProvider);

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: FractionallySizedBox(
              widthFactor: 0.9,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Spacer(),
                  GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 4,
                    mainAxisSpacing: 8,
                    shrinkWrap: true,
                    children: List.generate(12, (index) {
                      return const Image(
                        image: AssetImage('assets/island.png'),
                      );
                    }),
                  ),
                  const Spacer(),
                  const Text('島に隠すカードを選んでください'),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: game.currentPlayer!.cards.length,
                      itemBuilder: (context, index) {
                        final card = game.currentPlayer!.cards[index];
                        final isSelected = state.selectedCardIndex == index;
                        final notSelectedYet = state.selectedCardIndex == null;
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: InkWell(
                            onTap: () => controller.onSelectedCard(index),
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              foregroundDecoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: isSelected
                                    ? Border.all(
                                        color: Colors.blue,
                                        width: 6,
                                      )
                                    : null,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Opacity(
                                  opacity:
                                      !isSelected && !notSelectedYet ? 0.75 : 1,
                                  child: Image.asset(card.image),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: Opacity(
                      opacity: state.selectedCardIndex == null ? 0.5 : 1,
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
