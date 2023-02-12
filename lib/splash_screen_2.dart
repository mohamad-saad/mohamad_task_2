import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mohamad_task/home_page_screen.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {

  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
            () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(color: Colors.green),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 0, left: 60),
              child: Row(
                children: [
                  const Image(
                    image: AssetImage('./assets/carrot.png'),
                    height: 70,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 380, left: 10),
                    child: Column(
                      children: const [
                        Text(
                          'nectar',
                          style: TextStyle(fontSize: 70, color: Colors.white),
                        ),
                        Text(
                          'online groceriet',
                          style:
                          TextStyle(letterSpacing: 6, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
