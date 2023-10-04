import 'package:flutter/material.dart';

class First extends StatelessWidget {
  const First({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 240,
          ),
          Center(child: Image.asset("assets/images/learn.png")),
          const SizedBox(
            height: 25,
          ),
          const Text(
            "Learn at your convenient time",
            style: TextStyle(
                fontFamily: "Questrial",
                fontSize: 18,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.5),
          ),
        ],
      ),
    );
  }
}
