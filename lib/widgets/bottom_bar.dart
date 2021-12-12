import 'package:flutter/material.dart';

class ProjectNavBar extends StatefulWidget {
  const ProjectNavBar({Key? key}) : super(key: key);

  @override
  _ProjectNavBarState createState() => _ProjectNavBarState();
}

class _ProjectNavBarState extends State<ProjectNavBar> {
  int _currentIndex = 0;

  void updateIndex(int index) {
    setState(() => _currentIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Your Profile',
        ),
      ],
      selectedItemColor: Colors.amber,
      backgroundColor: Colors.white,
      elevation: 0,
      onTap: updateIndex,
    );
  }
}
