import 'package:blessed_light/ui/home/time_tile.dart';
import 'package:flutter/material.dart';

class PartnerTimeCard extends StatelessWidget {
  const PartnerTimeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.primaryContainer,
      elevation: 0,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          TimeTile(
            value: 14,
            unit: TimeUnit.days,
            contentColor: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
          TimeTile(
            value: 06,
            unit: TimeUnit.hours,
            contentColor: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
          TimeTile(
            value: 18,
            unit: TimeUnit.minutes,
            contentColor: Theme.of(context).colorScheme.onPrimaryContainer,
          )
        ]),
      ),
    );
  }
}
