import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:test_application/view_model/home_view_model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  late HomeViewModel viewModel;

  void _changeBackgroundColor(BuildContext context) {
    viewModel.changeBackgroundColor();
    _showColorChangeToast(context);
  }

  void _showColorChangeToast(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text(
        "Color changed",
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.black,
    ));
  }

  @override
  Widget build(BuildContext context) {
    viewModel = context.watch<HomeViewModel>();
    return GestureDetector(
      onTap: (){
        _changeBackgroundColor(context);
      },
      child: Scaffold(
        backgroundColor: viewModel.backgroundColor,
        body: const Center(
          child: Text(
            'Hello there',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
