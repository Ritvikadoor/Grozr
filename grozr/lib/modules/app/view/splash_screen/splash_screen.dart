import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green.shade400,
        body: const Center(
            child: SizedBox(
          width: 200,
          height: 200,
          child: Image(
            image: AssetImage("assets/images/g-company-removebg-preview.png"),
          ),
        )));
  }
}
