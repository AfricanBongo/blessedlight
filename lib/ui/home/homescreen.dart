import 'package:blessed_light/ui/home/last_thought.dart';
import 'package:blessed_light/ui/home/partner_header.dart';
import 'package:blessed_light/ui/home/partner_time_card.dart';
import 'package:blessed_light/ui/home/personal_time_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 28),
      children: [
        Text(
          "Last time I fell",
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(color: Theme.of(context).colorScheme.onBackground),
        ),

        const SizedBox(
          height: 16,
        ),

        // User's time since last fall.
        const PersonalTimeCard(),

        const SizedBox(
          height: 32,
        ),

        // Accountability partner name and recent update time elapsed, e.g. "10min ago".
        const PartnerHeader(),

        const SizedBox(
          height: 16,
        ),

        Text(
          "Last time they fell",
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: Theme.of(context).colorScheme.onBackground),
        ),

        const SizedBox(
          height: 12,
        ),

        const PartnerTimeCard(),

        const SizedBox(
          height: 16,
        ),

        Text(
          "Their last thought",
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: Theme.of(context).colorScheme.onBackground),
        ),

        const SizedBox(
          height: 12,
        ),

        const LastThought()
      ],
    );
  }
}
