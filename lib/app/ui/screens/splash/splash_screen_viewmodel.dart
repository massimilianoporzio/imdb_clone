import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:imdb_clone/app/navigation/app_route.dart';

class SplashScreenViewmodel {
  void gotoMainScreen(BuildContext context) {
    context.goNamed(AppRoute.main);
  }
}
