import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pirate_memory/notifiers/game_notifier.dart';
import 'package:pirate_memory/screens/member_setting/member_setting_state.dart';
import 'package:pirate_memory/screens/player_confirm/player_confirm_screen.dart';

final memberSettingProvider =
    StateNotifierProvider<MemberSettingController, MemberSettingState>(
  (ref) => MemberSettingController(const MemberSettingState()),
);

class MemberSettingController extends StateNotifier<MemberSettingState> {
  MemberSettingController(super._state);

  String? validatePlayerName(String? value) {
    if (value == null || value.isEmpty) {
      return 'プレイヤー名を入力してください！';
    }
    return null;
  }

  void onChangePlayerName(int index, String value) {
    final players = state.players;
    players[index] = players[index].copyWith(name: value);
    state = state.copyWith(players: players);
  }

  void goBack(BuildContext context) => Navigator.pop(context);

  Future<void> onSubmit(BuildContext context, WidgetRef ref) async {
    ref.read(gameProvider.notifier).updatePlayers(state.players);
    await Navigator.push(
      context,
      MaterialPageRoute<PlayerConfirmScreen>(
        builder: (context) => const PlayerConfirmScreen(),
      ),
    );
  }
}
