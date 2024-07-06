import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pirate_memory/config/app_colors.dart';
import 'package:pirate_memory/screens/home/home_screen.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'パイレーツメモリー',
      theme: ThemeData(
        primarySwatch: AppColors.primary,
        fontFamily: 'Main',
      ),
      home: const HomeScreen(),
    );
  }
}
