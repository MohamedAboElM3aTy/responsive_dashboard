import 'package:flutter/material.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Dashboard'),
      ),
      body: const Center(
        child: Text('Dashboard'),
      ),
    );
  }
}
