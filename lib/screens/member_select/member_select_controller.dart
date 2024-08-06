import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pirate_memory/notifiers/game_notifier.dart';
import 'package:pirate_memory/screens/member_select/member_select_state.dart';
import 'package:pirate_memory/screens/member_setting/member_setting_screen.dart';

final memberSelectProvider = StateNotifierProvider.autoDispose<
    MemberSelectController, MemberSelectState>(
  (ref) => MemberSelectController(const MemberSelectState()),
);

class MemberSelectController extends StateNotifier<MemberSelectState> {
  MemberSelectController(super._state);

  bool get isEnabled => state.count != null;

  final Map<String, int> options = {
    '2人': 2,
    '3人': 3,
    '4人': 4,
  };

  void onChanged(int? value) {
    state = state.copyWith(count: value);
  }

  void goBack(BuildContext context) => Navigator.pop(context);

  Future<void> onSubmit(BuildContext context, WidgetRef ref) async {
    ref.read(gameProvider.notifier).setupPlayers(state.count!);
    await Navigator.push(
      context,
      MaterialPageRoute<MemberSettingScreen>(
        builder: (context) => const MemberSettingScreen(),
      ),
    );
  }
}
