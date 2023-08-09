import 'package:flutter/material.dart';
import 'package:test_application/view/home/home_screen.dart';

class TestApplication extends StatelessWidget {
  const TestApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
