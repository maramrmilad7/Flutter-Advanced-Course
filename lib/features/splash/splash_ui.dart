import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/helpers/extension.dart';
import 'package:flutter_advanced/core/routing/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    goToNextScreen();
  }

  void goToNextScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      context.pushNamed(Routes.onBoardingScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Image.asset('assets/images/splash.png', fit: BoxFit.cover),
      ),
    );
  }
}
