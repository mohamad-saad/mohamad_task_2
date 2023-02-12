import 'package:flutter/material.dart';
import 'package:mohamad_task/splash_screen_2.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 430,
              child: Image(
                image: AssetImage('assets/bag.png'),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                alignment: Alignment.centerLeft,
                child: const SizedBox(
                  height: 100,
                  child: Text(
                    'Get your groceries \nwith nectar',
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: SizedBox(
                height: 60,
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    prefixIcon: Container(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      height: 10,
                      child: Image.asset('./assets/bangladesh.png'),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Text(
                'Or connect with social media',
                style: TextStyle(fontFamily: 'Poppins', color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SplashScreen2()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.indigoAccent,
                padding: const EdgeInsets.only(
                  left: 40,
                  right: 70,
                  top: 20,
                  bottom: 20,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(right: 40),
                              child: Image(
                                image: AssetImage('assets/google.png'),
                                height: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const TextSpan(
                        text: "Continue with Google",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins'),
                      ),
                    ],
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SplashScreen2()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.indigo,
                padding: const EdgeInsets.only(
                  left: 40,
                  right: 50,
                  top: 20,
                  bottom: 20,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(right: 40),
                              child: Image(
                                image: AssetImage('assets/facebook.png'),
                                height: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const TextSpan(
                        text: "Continue with Facebook",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins'),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
