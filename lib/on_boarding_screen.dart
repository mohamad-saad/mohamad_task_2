import 'package:flutter/material.dart';
import 'package:mohamad_task/login_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
            child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.only(top: 480),
            child: Column(
              children: [
                const Image(
                  image: AssetImage("assets/carrot.png"),
                  height: 60,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    'Welcome \nto our store',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 45,
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                  ),
                ),
                const Text(
                  'Ger your groceries in as fast as one hour',
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Poppins',
                    fontSize: 15,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Colors.green,
                      padding: const EdgeInsets.only(
                        left: 130,
                        right: 130,
                        top: 20,
                        bottom: 20,
                      ),
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                      ),
                    ))
              ],
            ),
          ),
        )),
      ),
    );
  }
}
