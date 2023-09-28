import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kBottomNavigationBarHeight + 16,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            hoverElevation: 10,
            splashColor: Colors.grey,
            tooltip: 'Search',
            elevation: 4,
            backgroundColor: Colors.amber,
            child: Icon(
              Icons.shopping_bag_outlined,
            ),
            onPressed: () {
              setState(() {
                _currentIndex = 1;
              });
            },
          ),
        ),
        bottomNavigationBar: AnimatedBottomNavigationBar.builder(
          itemCount: 4,
          tabBuilder: (int index, bool isActive) {
            Color color = isActive ? Colors.amber : Colors.grey;
            return Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  index == 1 ? Icons.search : _getIconData(index),
                  size: 34,
                  color: color,
                ),
              ],
            );
          },
          activeIndex: _currentIndex,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.softEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }

  IconData _getIconData(int index) {
    switch (index) {
      case 0:
        return Icons.home_outlined;
      case 2:
        return Icons.closed_caption;
      case 3:
        return Icons.person;
      default:
        return Icons.home_outlined;
    }
  }
}
