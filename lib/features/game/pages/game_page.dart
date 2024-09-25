import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils.dart';
import '../../../core/widgets/buttons/primary_button.dart';
import '../../../core/widgets/custom_scaffold.dart';
import '../../../core/widgets/texts/text_r.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key, required this.level});

  final int level;

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  int hearts = 3;

  void onStar() {}

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      id: getBg(widget.level),
      body: Stack(
        children: [
          _Level(widget.level),
          Positioned(
            top: 47 + getStatusBar(context),
            left: 15,
            child: const TextB('Pontuação: 0', fontSize: 18),
          ),
          Positioned(
            top: 47 + getStatusBar(context),
            right: 15,
            child: Row(
              children: [
                if (hearts == 1) ...[
                  const _Diamond(),
                ] else if (hearts == 2) ...[
                  const _Diamond(),
                  const SizedBox(width: 10),
                  const _Diamond(),
                ] else if (hearts == 3) ...[
                  const _Diamond(),
                  const SizedBox(width: 10),
                  const _Diamond(),
                  const SizedBox(width: 10),
                  const _Diamond()
                ],
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _Star(onStar),
                    _Star(onStar),
                    _Star(onStar),
                    _Star(onStar),
                    if (widget.level >= 3) _Star(onStar),
                    if (widget.level >= 4) _Star(onStar),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _Star(onStar),
                    _Star(onStar),
                    _Star(onStar),
                    _Star(onStar),
                    if (widget.level >= 3) _Star(onStar),
                    if (widget.level >= 4) _Star(onStar),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _Star(onStar),
                    _Star(onStar),
                    _Star(onStar),
                    _Star(onStar),
                    if (widget.level >= 3) _Star(onStar),
                    if (widget.level >= 4) _Star(onStar),
                  ],
                ),
                if (widget.level >= 2) ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _Star(onStar),
                      _Star(onStar),
                      _Star(onStar),
                      _Star(onStar),
                      if (widget.level >= 3) _Star(onStar),
                      if (widget.level >= 4) _Star(onStar),
                    ],
                  ),
                ],
                if (widget.level >= 5) ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _Star(onStar),
                      _Star(onStar),
                      _Star(onStar),
                      _Star(onStar),
                      _Star(onStar),
                      _Star(onStar),
                    ],
                  ),
                ],
                if (widget.level >= 6) ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _Star(onStar),
                      _Star(onStar),
                      _Star(onStar),
                      _Star(onStar),
                      _Star(onStar),
                      _Star(onStar),
                    ],
                  ),
                ],
              ],
            ),
          ),
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: PrimaryButton(
              title: 'Salão',
              onPressed: () {
                context.pop();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _Level extends StatelessWidget {
  const _Level(this.level);

  final int level;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 13 + getStatusBar(context)),
        Image.asset(
          'assets/girl.png',
          height: 112,
        ),
        SizedBox(
          height: 44,
          child: Stack(
            children: [
              Center(
                child: SvgPicture.asset('assets/level_title.svg'),
              ),
              Center(
                child: TextB('Nível $level', fontSize: 18),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _Diamond extends StatelessWidget {
  const _Diamond();

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/diamond2.png',
      height: 30,
    );
  }
}

class _Star extends StatelessWidget {
  const _Star(this.onPressed);

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      padding: EdgeInsets.zero,
      child: SizedBox(
        height: 56,
        width: 56,
        child: Stack(
          children: [
            SvgPicture.asset('assets/star.svg'),
            Center(
              child: Image.asset(
                'assets/star.png',
                height: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
