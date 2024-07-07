import 'package:flutter/material.dart';
import 'package:pirate_memory/screens/member_select/member_select_screen.dart';

class HomeController {
  Future<void> startGame(
    BuildContext context,
  ) async {
    await Navigator.push(
      context,
      MaterialPageRoute<MemberSelectScreen>(
        builder: (context) => const MemberSelectScreen(),
      ),
    );
  }
}
