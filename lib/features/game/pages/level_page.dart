import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils.dart';
import '../../../core/widgets/buttons/primary_button.dart';
import '../../../core/widgets/custom_scaffold.dart';
import '../../../core/widgets/page_title.dart';
import '../widgets/level_card.dart';

class LevelPage extends StatelessWidget {
  const LevelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            children: [
              SizedBox(height: 100 + getStatusBar(context)),
              const Row(
                children: [
                  LevelCard(
                    level: 1,
                    active: true,
                  ),
                  SizedBox(width: 16),
                  LevelCard(
                    level: 2,
                    active: false,
                    price: 50,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  LevelCard(
                    level: 3,
                    active: false,
                    price: 80,
                  ),
                  SizedBox(width: 16),
                  LevelCard(
                    level: 4,
                    active: false,
                    price: 120,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  LevelCard(
                    level: 5,
                    active: false,
                    price: 150,
                  ),
                  SizedBox(width: 16),
                  LevelCard(
                    level: 6,
                    active: false,
                    price: 200,
                  ),
                ],
              ),
              SizedBox(height: 100 + getStatusBar(context)),
            ],
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 40 + getStatusBar(context)),
              child: const PageTitle('Selecione o nível'),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: PrimaryButton(
                title: 'Salão',
                onPressed: () {
                  context.pop();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
