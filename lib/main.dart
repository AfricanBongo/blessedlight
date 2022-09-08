import 'package:blessed_light/theme/color.dart';
import 'package:blessed_light/theme/typography.dart';
import 'package:blessed_light/ui/entry_page.dart';
import 'package:blessed_light/ui/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const BlessedLightApp());
}

class BlessedLightApp extends StatelessWidget {
  const BlessedLightApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return MaterialApp(
      title: 'BlessedLight',
      theme: ThemeData(
        colorScheme: lightColorScheme,
        textTheme: materialTextTheme(),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: darkColorScheme,
        textTheme: materialTextTheme(),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
