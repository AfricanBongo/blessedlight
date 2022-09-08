import 'package:blessed_light/theme/color.dart';
import 'package:flutter/material.dart';

class BlessedLightLogo extends StatelessWidget {
  const BlessedLightLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
        TextSpan(
            children:  [
              TextSpan(
                text: "Blessed",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Theme.of(context).colorScheme.surfaceTint
                ),
              ),
              TextSpan(
                text: "Light",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: secondary80
                ),
              ),
            ]
        )
    );
  }
}
