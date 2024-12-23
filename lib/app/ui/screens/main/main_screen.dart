import 'package:flutter/material.dart';
import 'package:imdb_clone/app/library/resource/_colors.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Text('Main Screen'),
      ),
    );
  }
}
