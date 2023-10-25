import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GMJ Hogar Mobile'),
      ),
      body: const Center(
        child: Text('GMJ Hogar'),
      ),
    );
  }

}