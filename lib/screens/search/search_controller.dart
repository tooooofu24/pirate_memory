import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pirate_memory/notifiers/game_notifier.dart';
import 'package:pirate_memory/screens/search/components/search_dialog.dart';
import 'package:pirate_memory/screens/search/search_state.dart';

final searchProvider = StateNotifierProvider<SearchController, SearchState>(
  (ref) => SearchController(const SearchState()),
);

class SearchController extends StateNotifier<SearchState> {
  SearchController(super._state);

  void onSelectField(int index) {
    if (state.selectedFieldIndex == index) {
      state = state.copyWith(selectedFieldIndex: null);
    } else {
      state = state.copyWith(selectedFieldIndex: index);
    }
  }

  void goBack(BuildContext context) {
    Navigator.of(context).pop();
  }

  Future<void> onSubmit(BuildContext context, WidgetRef ref) async {
    if (state.selectedFieldIndex == null) {
      return;
    }
    final fields = ref.watch(gameProvider).fields;
    final cards = fields[state.selectedFieldIndex!].cards;

    await showDialog<String>(
      context: context,
      builder: (context) => SearchDialog(
        onPressed: () => Navigator.pop(context),
        cards: cards,
      ),
    );
  }
}
