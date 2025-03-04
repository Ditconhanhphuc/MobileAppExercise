import 'package:flutter/material.dart';
import 'package:homework1/data/notifiers.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedPage, child) {
        return NavigationBar(
          backgroundColor: const Color.fromARGB(255, 165, 238, 255), // Đổi màu nền
          indicatorColor: const Color.fromARGB(255, 84, 207, 235),
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.auto_awesome),
              label: 'Skills',
            ),
            NavigationDestination(
              icon: Icon(Icons.source),
              label: 'Project',
            ),
          ],
          selectedIndex: selectedPage,
          onDestinationSelected: (int index) {
            selectedPageNotifier.value = index;
          },
        );
      },
    );
  }
}
