import 'package:flutter/material.dart';

import '../../../core/widgets/custom_scaffold.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key, required this.level});

  final int level;

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      body: Column(
        children: [],
      ),
    );
  }
}
