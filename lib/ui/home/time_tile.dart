import 'package:flutter/material.dart';

/// Show the value of a unit of time with its unit below.
class TimeTile extends StatelessWidget {
  final int value;
  final TimeUnit unit;
  final bool isLarge;
  final Color? contentColor;

  const TimeTile({
    Key? key,
    required this.value,
    required this.unit,
    this.isLarge = false,
    this.contentColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final valueStyle = (isLarge)
        ? Theme.of(context).textTheme.displayMedium
        : Theme.of(context).textTheme.titleLarge;

    final unitStyle = (isLarge)
        ? Theme.of(context).textTheme.titleMedium
        : Theme.of(context).textTheme.bodyLarge;

    final thisContentColor =
        contentColor ?? Theme.of(context).colorScheme.onPrimaryContainer;

    return Column(children: [
      Text(value.toString(),
          style: valueStyle?.copyWith(color: thisContentColor)),
      const SizedBox(
        height: 4,
      ),
      Text(unit.name(),
          style: unitStyle?.copyWith(color: thisContentColor)),
    ]);
  }
}

enum TimeUnit { days, hours, minutes }
extension TimeUnitExtension on TimeUnit {
  String name() {
    final asString = toString();
    if (asString.contains("days")) {
      return "days";
    } else if (asString.contains("hours")) {
      return "hours";
    } else {
      return "minutes";
    }
  }
}
