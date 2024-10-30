// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TestTask extends StatelessWidget {
  const TestTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      'task',
      style: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w500,
      ),
    ));
  }
}
