import 'package:flutter/material.dart';
import 'package:imdb_clone/app/library/resource/_colors.dart';
import 'package:imdb_clone/app/ui/screens/main/main_screen_viewmodel.dart';
import 'package:imdb_clone/app/ui/screens/main/widgets/bottom_navigation_bar.dart';
import 'package:imdb_clone/features/home/presentation/pages/home_screen.dart';
import 'package:imdb_clone/features/profile/presentation/pages/profile_screen.dart';
import 'package:imdb_clone/features/search/presentation/pages/search_screen.dart';
import 'package:imdb_clone/features/video/presentation/pages/video_screen.dart';

class MainScreen extends StatefulWidget {
  final MainScreenViewmodel viewmodel;

  const MainScreen({
    super.key,
    required this.viewmodel,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: const [
          HomeScreen(),
          SearchScreen(),
          VideoScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: IMDBBottomNavigationBar(
        pageController: _pageController,
      ),
    );
  }
}
