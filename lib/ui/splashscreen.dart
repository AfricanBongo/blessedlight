import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:blessed_light/theme/color.dart';
import 'package:flutter/material.dart';

import 'entry_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 8),
        () => Navigator.of(context).push(_createRoute()));
  }

  // Navigate to the Home Screen through the EntryPage.
  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const EntryPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final colorizeColors = [
      Theme.of(context).colorScheme.surfaceTint,
      secondary80,
    ];

    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Theme.of(context).colorScheme.background,
      child: Center(
        child: AnimatedTextKit(animatedTexts: [
          ColorizeAnimatedText("BlessedLight",
              textStyle: Theme.of(context).textTheme.displayMedium!,
              colors: colorizeColors)
        ]),
      ),
    );
  }
}
