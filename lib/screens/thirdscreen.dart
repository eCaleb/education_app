import 'package:flutter/material.dart';

class Third extends StatefulWidget {
  const Third({super.key});

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
         const SizedBox(height: 200,),
          Center(child: Image.asset("assets/images/knowledge.png")),
          const SizedBox(height: 50,),
          const Text(
            "Add to your Knowledge and skill",
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