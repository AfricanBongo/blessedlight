import 'package:flutter/material.dart';

class PartnerHeader extends StatelessWidget {
  const PartnerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
        "Bella's stats",
        style: Theme.of(context)
            .textTheme
            .headlineMedium
            ?.copyWith(color: Theme.of(context).colorScheme.onBackground),
      ),
      const SizedBox(
        width: 8,
      ),
      Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
        child: Text(
          "Updated 10min ago",
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
              color: Theme.of(context).colorScheme.onPrimaryContainer),
        ),
      )
    ]);
  }
}
