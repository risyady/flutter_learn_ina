import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_learn_ina/screen/signup_screen.dart';

class SplashScreen extends StatefulWidget {
  static String id = "splash";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () {
        /* Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const SignupScreen(),
          ),
        ); */
        Navigator.pushReplacementNamed(
          context,
          SignupScreen.id,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/img/icon.png",
              width: 150,
              color: Colors.white,
            ),
            const SizedBox(height: 56),
            const CircularProgressIndicator(
              color: Colors.white,
            ),
            /* const SizedBox(height: 56),
            Image.network(
              "https://storage.googleapis.com/cms-storage-bucket/683514c5660dbe52f5ba.png",
              color: Colors.white,
              width: 250,
            ), */
          ],
        ),
      ),
    );
  }
}
