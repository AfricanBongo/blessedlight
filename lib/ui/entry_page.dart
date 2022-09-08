import 'dart:io';

import 'package:blessed_light/ui/home/homescreen.dart';
import 'package:blessed_light/ui/logo.dart';
import 'package:blessed_light/ui/nav/bottom_nav.dart';
import 'package:blessed_light/ui/nav/end_drawer.dart';
import 'package:flutter/material.dart';

class EntryPage extends StatelessWidget {
  const EntryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: topAppBar(context),
      drawer: const EndDrawer(),
      bottomNavigationBar: const BottomNavBar(),
      body: const HomeScreen()
    );
  }

  /// The default app bar with a hamburger menu that shows the navigation drawer.
  /// And the BlessedLight logo in the center.
  AppBar topAppBar(BuildContext context) {
    return AppBar(
      // BlessedLight logo
      backgroundColor: Theme.of(context).colorScheme.background,
      title: const BlessedLightLogo(),
    );
  }
}
