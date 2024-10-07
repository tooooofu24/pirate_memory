import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pirate_memory/notifiers/game_notifier.dart';
import 'package:pirate_memory/screens/member_setting/member_setting_state.dart';
import 'package:pirate_memory/screens/player_confirm/player_confirm_screen.dart';

final memberSettingProvider = StateNotifierProvider.family<
    MemberSettingController, MemberSettingState, List<String>>(
  (ref, initialPlayerNames) => MemberSettingController(
    MemberSettingState(playerNames: initialPlayerNames),
  ),
);

class MemberSettingController extends StateNotifier<MemberSettingState> {
  MemberSettingController(super._state);

  String? validatePlayerName(String? value) {
    if (value == null || value.isEmpty) {
      return 'プレイヤー名を入力してください！';
    }
    return null;
  }

  void onChangePlayerName(WidgetRef ref, int index, String value) {
    final playerNames = List<String>.from(state.playerNames);
    playerNames[index] = value;
    state = state.copyWith(playerNames: playerNames);
  }

  void goBack(BuildContext context) => Navigator.pop(context);

  Future<void> onSubmit(BuildContext context, WidgetRef ref) async {
    ref.read(gameProvider.notifier).updatePlayerNames(state.playerNames);
    await Navigator.push(
      context,
      MaterialPageRoute<PlayerConfirmScreen>(
        builder: (context) => const PlayerConfirmScreen(),
      ),
    );
  }
}
