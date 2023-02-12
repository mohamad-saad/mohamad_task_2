import 'package:flutter/material.dart';
import 'package:mohamad_task/login_screen.dart';
import 'package:mohamad_task/on_boarding_screen.dart';
import 'package:mohamad_task/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/SplashScreen',
    routes: {
      '/LoginScreen': (context) => const LoginScreen(),
      '/OnBoardingScreen': (context) => const OnBoardingScreen(),
      '/SplashScreen': (context) => const SplashScreen(),

    },
  ));
}
