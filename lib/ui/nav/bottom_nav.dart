import 'package:blessed_light/ui/entry_page.dart';
import 'package:flutter/material.dart';

/// Bottom navigation with only 2 pages.
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: currentPageIndex,
      onDestinationSelected: (index) {
        setState(() {
          currentPageIndex = index;
        });
      },
      destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: "Home"),
        NavigationDestination(icon: Icon(Icons.cloud), label: "Thoughts"),
      ],
    );
  }
}
