import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pirate_memory/notifiers/game_notifier.dart';
import 'package:pirate_memory/screens/home/home_screen.dart';
import 'package:pirate_memory/screens/member_select/member_select_screen.dart';

class ResultController extends ChangeNotifier {
  Future<void> restartGame(BuildContext context, WidgetRef ref) async {
    ref.read(gameProvider.notifier).reset();

    await Navigator.push(
      context,
      MaterialPageRoute<MemberSelectScreen>(
        builder: (context) => const MemberSelectScreen(),
      ),
    );
  }

  Future<void> goHome(BuildContext context, WidgetRef ref) async {
    ref.read(gameProvider.notifier).reset();

    await Navigator.push(
      context,
      MaterialPageRoute<HomeScreen>(
        builder: (context) => const HomeScreen(),
      ),
    );
  }
}
