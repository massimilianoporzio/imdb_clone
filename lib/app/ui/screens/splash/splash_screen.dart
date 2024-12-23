import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imdb_clone/app/library/resource/_assets.dart';
import 'package:imdb_clone/app/library/resource/_colors.dart';
import 'package:imdb_clone/app/ui/screens/splash/splash_screen_viewmodel.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    super.key,
    required this.viewmodel,
  });

  final SplashScreenViewmodel viewmodel;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(seconds: 2));
      if (mounted) {
        widget.viewmodel.gotoMainScreen(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: SvgPicture.asset(
          AppIcons.imdbLogo,
          height: 200,
        ),
      ),
    );
  }
}
