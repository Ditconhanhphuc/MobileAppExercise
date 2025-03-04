import 'package:flutter/material.dart';
import 'package:homework1/data/notifiers.dart';
import 'package:homework1/views/pages/home_page.dart';
import 'package:homework1/views/pages/project_page.dart';
import 'package:homework1/views/pages/skill_page.dart';
import 'package:homework1/views/widgets/navbar_widget.dart';

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  static final List<Widget> pages = [
    const HomePage(),
    const SkillPage(),
    const ProjectPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portfolio', style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Color.fromARGB(255, 165, 238, 255),
      ),
      body: ValueListenableBuilder<int>(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: const NavbarWidget(),
    );
  }
}
