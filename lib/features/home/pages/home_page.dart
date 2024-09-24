import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils.dart';
import '../../../core/widgets/buttons/primary_button.dart';
import '../../../core/widgets/custom_scaffold.dart';
import '../widgets/settings_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        children: [
          SizedBox(height: 26 + getStatusBar(context)),
          Image.asset(
            'assets/logo.png',
            width: 300,
          ),
          const Spacer(),
          const Row(
            children: [
              Spacer(),
              SettingsButton(),
              SizedBox(width: 40),
            ],
          ),
          const SizedBox(height: 60),
          PrimaryButton(
            title: 'Novo jogo',
            onPressed: () {
              // context.push('/rules');
            },
          ),
          const SizedBox(height: 20),
          PrimaryButton(
            title: 'Regras',
            onPressed: () {
              context.push('/rules');
            },
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}
