import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pirate_memory/notifiers/game_notifier.dart';
import 'package:pirate_memory/screens/hide_select/hide_select_state.dart';
import 'package:pirate_memory/screens/player_confirm/player_confirm_screen.dart';
import 'package:pirate_memory/screens/search/search_screen.dart';

final hideSelectProvider =
    StateNotifierProvider<HideSelectController, HideSelectState>(
  (ref) => HideSelectController(const HideSelectState()),
);

class HideSelectController extends StateNotifier<HideSelectState> {
  HideSelectController(super._state);

  void onSelectField(int index) {
    if (state.selectedFieldIndex == index) {
      state = state.copyWith(selectedFieldIndex: null);
    } else {
      state = state.copyWith(selectedFieldIndex: index);
    }
  }

  void onSelectCard(int index) {
    if (state.selectedCardIndex == index) {
      state = state.copyWith(selectedCardIndex: null);
    } else {
      state = state.copyWith(selectedCardIndex: index);
    }
  }

  void goBack(BuildContext context) {
    Navigator.of(context).pop();
  }

  Future<void> onSubmit(BuildContext context, WidgetRef ref) async {
    if (!state.canSubmit) {
      return;
    }
    final cards = ref.watch(gameProvider).currentPlayer!.cards;
    final card = cards[state.selectedCardIndex!];
    final fieldIndex = state.selectedFieldIndex;
    ref.read(gameProvider.notifier).hide(card, fieldIndex!);
    // stateを初期化する
    state = const HideSelectState();
    // プレイヤーの手札がなくなったら次の画面に遷移
    if (ref.watch(gameProvider).currentPlayer!.cards.isEmpty) {
      await Navigator.pushReplacement(
        context,
        MaterialPageRoute<SearchScreen>(
          builder: (context) => const SearchScreen(),
        ),
      );
      return;
    } else {
      // 次のプレイヤーの手札があれば、次のプレイヤーの手札選択画面に遷移
      await Navigator.pushReplacement(
        context,
        MaterialPageRoute<PlayerConfirmScreen>(
          builder: (context) => const PlayerConfirmScreen(),
        ),
      );
    }
  }
}
