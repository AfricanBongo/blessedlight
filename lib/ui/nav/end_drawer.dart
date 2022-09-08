import 'package:blessed_light/ui/nav/drawer_item.dart';
import 'package:blessed_light/ui/logo.dart';
import 'package:flutter/material.dart';

class EndDrawer extends StatelessWidget {
  const EndDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topRight: Radius.circular(16), bottomRight: Radius.circular(16))
      ),
      child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          children: [
            Container(
                padding: const EdgeInsets.only(left: 12,top: 32, bottom: 24),
                child: const BlessedLightLogo()),
            const NavigationDrawerItem(
                iconData: Icons.home,
                title: "Home",
                selected: true,),

            const SizedBox(height: 4,),

            const NavigationDrawerItem(
                iconData: Icons.groups,
                title: "Accountability partners",),

            const SizedBox(height: 4,),

            const NavigationDrawerItem(
                iconData: Icons.person,
                title: "Profile",),

            const SizedBox(height: 4,),

            const NavigationDrawerItem(
                iconData: Icons.settings,
                title: "Settings",)
          ]),
    );
  }
}
