// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:todo_app/test/test_pages/test_archived.dart';
import 'package:todo_app/test/test_pages/test_done.dart';
import 'package:todo_app/test/test_pages/test_task.dart';

class TestHomeLayout extends StatefulWidget {
  const TestHomeLayout({super.key});

  @override
  State<TestHomeLayout> createState() => _TestHomeLayoutState();
}

int currentIndex = 0;
List<Widget> pages = [
  TestTask(),
  TestDone(),
  TestArchived(),
];
List<String> titles = [
  "TestTask",
  "TestDone",
  "TestArchived",
];

class _TestHomeLayoutState extends State<TestHomeLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titles[currentIndex]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
          print(currentIndex);
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.task,
              ),
              label: 'task'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.done,
              ),
              label: 'done'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.archive,
              ),
              label: 'archived'),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
