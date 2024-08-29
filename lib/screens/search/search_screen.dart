import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pirate_memory/models/player_color.dart';
import 'package:pirate_memory/notifiers/game_notifier.dart';
import 'package:pirate_memory/screens/hide_select/components/field_select.dart';

class SearchScreen extends ConsumerWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final game = ref.watch(gameProvider);

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: FractionallySizedBox(
              widthFactor: 0.8,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Spacer(),
                  GridView.count(
                    childAspectRatio: 3 / 4,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 4,
                    shrinkWrap: true,
                    children: [
                      ...List.generate(game.players.length, (index) {
                        return Column(
                          children: [
                            Image.asset(
                              PlayerColor.values[index].pirateImage,
                              width: 60,
                            ),
                            const Text('100'),
                          ],
                        );
                      }),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  FieldSelect(
                    fields: game.fields,
                  ),
                  const Spacer(),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: Opacity(
                      opacity: 1,
                      child: FilledButton(
                        onPressed: () async {},
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
