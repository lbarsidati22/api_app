import 'package:flutter/material.dart';

class TestDone extends StatelessWidget {
  const TestDone({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      'done',
      style: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w500,
      ),
    ));
  }
}
