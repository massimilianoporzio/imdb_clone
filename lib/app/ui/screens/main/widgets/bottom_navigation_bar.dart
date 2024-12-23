import 'package:flutter/material.dart';
import 'package:imdb_localization/strings.g.dart';

class IMDBBottomNavigationBar extends StatefulWidget {
  final PageController pageController;

  const IMDBBottomNavigationBar({
    super.key,
    required this.pageController,
  });

  @override
  State<IMDBBottomNavigationBar> createState() =>
      IMDBBottomNavigationBarState();
}

class IMDBBottomNavigationBarState extends State<IMDBBottomNavigationBar> {
  var _currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);
    return BottomNavigationBar(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: true,
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentPageIndex, //lo prende dallo stato
      onTap: (index) {
        setState(() {
          _currentPageIndex = index;
        });
        widget.pageController.jumpToPage(index);
      },
      items: [
        BottomNavigationBarItem(
          icon: const Icon(
            Icons.home,
          ),
          label: t.main.tabs.home,
        ),
        BottomNavigationBarItem(
          icon: const Icon(
            Icons.search,
          ),
          label: t.main.tabs.search,
        ),
        BottomNavigationBarItem(
          icon: const Icon(
            Icons.slow_motion_video,
          ),
          label: t.main.tabs.video,
        ),
        BottomNavigationBarItem(
          icon: const Icon(
            Icons.person_pin,
          ),
          label: t.main.tabs.profile,
        ),
      ],
    );
  }
}
