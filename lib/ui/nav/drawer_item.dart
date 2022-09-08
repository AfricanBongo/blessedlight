import 'package:flutter/material.dart';


/// A destination in the app.
///
/// Credit to [Vagish1](https://github.com/vagish1/Material-You-Drawer/blob/main/main.dart)
class NavigationDrawerItem extends StatelessWidget {
  final IconData iconData;
  final String title;
  final bool selected;
  final Function()? onTap;
  const NavigationDrawerItem({
    Key? key,
    required this.iconData,
    required this.title,
    this.selected = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      leading: Icon(iconData),
      onTap: onTap ?? () {},
      title: Text(title),
      selectedTileColor: Theme.of(context).colorScheme.secondaryContainer,
      selected: selected,
      selectedColor: Theme.of(context).colorScheme.onSecondaryContainer,
    );
  }
}