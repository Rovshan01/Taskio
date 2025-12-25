import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/abs/icon_generator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<IconData> _iconList = [
    Icons.task_alt,
    Icons.menu,
    Icons.add,
    Icons.note_alt_rounded,
    Icons.person,
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Work List',
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
          backgroundColor: Color(0xFFF96060),
          bottom: TabBar(
            labelStyle: TextStyle(fontSize: 19.0),
            labelColor: Colors.white,
            unselectedLabelColor: Color(0xFFE2E2EC),
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            indicatorPadding: EdgeInsetsGeometry.symmetric(horizontal: 30.0),
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(text: 'Today'),
              Tab(text: 'Month'),
            ],
          ),
          actions: [
            PopupMenuButton(
              constraints: BoxConstraints(minWidth: 230, minHeight: 130),
              icon: Icon(Icons.more_vert, color: Colors.white),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: Text(
                      'Incomplete Tasks',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  PopupMenuItem(
                    child: Text(
                      'Completed Tasks',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  PopupMenuItem(
                    child: Text('All Tasks', style: TextStyle(fontSize: 18)),
                  ),
                ];
              },
            ),
          ],
        ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: _iconList,
          activeIndex: 2,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          onTap: (index) {},
          //other params
        ),
      ),
    );
  }
}
