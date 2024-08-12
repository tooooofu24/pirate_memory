import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pirate_memory/notifiers/game_notifier.dart';
import 'package:pirate_memory/screens/hide_select/hide_select_state.dart';

final hideSelectProvider =
    StateNotifierProvider<HideSelectController, HideSelectState>(
  (ref) => HideSelectController(const HideSelectState()),
);

class HideSelectController extends StateNotifier<HideSelectState> {
  HideSelectController(super._state);

  void onSelectedCard(int index) {
    if (state.selectedCardIndex == index) {
      state = state.copyWith(selectedCardIndex: null);
    } else {
      state = state.copyWith(selectedCardIndex: index);
    }
  }

  void onSubmit(BuildContext context, WidgetRef ref) {
    if (state.selectedCardIndex == null) {
      return;
    }
    final cards = ref.watch(gameProvider).currentPlayer!.cards;
    final card = cards[state.selectedCardIndex!];
    ref.read(gameProvider.notifier).selectCard(card);
  }
}
