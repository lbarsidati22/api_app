import 'package:flutter/material.dart';

class TestArchived extends StatelessWidget {
  const TestArchived({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      'archived',
      style: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w500,
      ),
    ));
  }
}
