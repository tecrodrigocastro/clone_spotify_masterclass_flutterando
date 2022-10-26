import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    int index = 0;
    return Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.3),
                Colors.black.withOpacity(0.8),
              ],
            ),
          ),
          child: BottomNavigationBar(
            // backgroundColor: Color(0x00ffffff).withOpacity(0.2),
            unselectedItemColor: Colors.white,
            elevation: 0,
            selectedItemColor: Colors.white70,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.library_books_outlined),
                  label: 'Your Library'),
            ],
          ),
        ));
  }
}
