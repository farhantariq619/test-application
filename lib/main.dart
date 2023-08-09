import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_application/test_application.dart';
import 'package:test_application/view_model/home_view_model.dart';

void main() {
  runApp(
    ChangeNotifierProvider<HomeViewModel>(
      create: (_) => HomeViewModel(),
      child: const TestApplication(),
    ),
  );
}
