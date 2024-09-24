import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils.dart';
import '../../../core/widgets/buttons/primary_button.dart';
import '../../../core/widgets/custom_scaffold.dart';
import '../../../core/widgets/page_title.dart';

class LevelPage extends StatelessWidget {
  const LevelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        children: [
          SizedBox(height: 40 + getStatusBar(context)),
          const PageTitle('Selecione o nível'),
          const Spacer(),
          PrimaryButton(
            title: 'Salão',
            onPressed: () {
              context.pop();
            },
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
