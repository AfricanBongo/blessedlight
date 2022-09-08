import 'package:blessed_light/ui/home/time_tile.dart';
import 'package:flutter/material.dart';

class PersonalTimeCard extends StatelessWidget {
  const PersonalTimeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.secondaryContainer,
      elevation: 0,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          TimeTile(
            value: 22,
            unit: TimeUnit.days,
            isLarge: true,
            contentColor: Theme.of(context).colorScheme.onSecondaryContainer,
          ),
          TimeTile(
            value: 06,
            unit: TimeUnit.hours,
            isLarge: true,
            contentColor: Theme.of(context).colorScheme.onSecondaryContainer,
          ),
          TimeTile(
            value: 32,
            unit: TimeUnit.minutes,
            isLarge: true,
            contentColor: Theme.of(context).colorScheme.onSecondaryContainer,
          )
        ]),
      ),
    );
  }
}
