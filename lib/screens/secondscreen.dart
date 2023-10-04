import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 180,
          ),
          Center(child: Image.asset("assets/images/class.png")),
          const SizedBox(
            height: 40,
          ),
          const SizedBox(
            width: 250,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Explore through the various courses.",
                style: TextStyle(
                  
                    fontFamily: "Questrial",
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
