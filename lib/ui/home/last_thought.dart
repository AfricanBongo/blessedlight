import 'package:flutter/material.dart';

class LastThought extends StatelessWidget {
  const LastThought({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.background,
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Theme.of(context).colorScheme.outline),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Day of writing
            Text(
              "Yesterday, 14 August",
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant),
            ),

            const SizedBox(
              height: 4,
            ),

            // Title
            Text(
              "I feel so down",
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onBackground),
            ),

            const SizedBox(
              height: 4,
            ),

            // Content
            Text(
              "Then I drop to my knees because I can't find a decent enough reason not to, "
                  "because reluctance rarely stands a chance against repeated behavior.",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onBackground),
            ),
          ],
        ),
      ),
    );
  }
}
