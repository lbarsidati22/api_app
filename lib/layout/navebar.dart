// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:todo_app/screens/archived.dart';
import 'package:todo_app/screens/done.dart';
import 'package:todo_app/screens/task.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final pageController = PageController();
  List<Widget> screens = [
    Task(),
    Done(),
    Archived(),
  ];
  List<String> titles = [
    'task',
    'done',
    'archived',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              label: 'task',
              icon: Icon(
                Icons.menu,
              ),
            ),
            BottomNavigationBarItem(
              label: 'done',
              icon: Icon(
                Icons.check_box,
              ),
            ),
            BottomNavigationBarItem(
              label: 'arckivet',
              icon: Icon(
                Icons.art_track,
              ),
            ),
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
        ),
      ),
      appBar: AppBar(
        title: Text(titles[currentIndex]),
      ),
      body: screens[currentIndex],
    );
  }
}
