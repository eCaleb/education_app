
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  //if i wanted to put a timer for a page to show,i would use this code:
  // @override
  // void initState() {
    
  //   Timer(const Duration(seconds: 5), () {
  //     Navigator.push(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) => const MovingPage(),
  //         ));
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 216, 72, 211),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 190.0),
            child: Image.asset("assets/images/Ellipse.png"),
          ),
          const SizedBox(
            height: 120,
          ),
          Center(
            child: Stack(
              children: [
                Text(
                  "Paideia",
                  style: TextStyle(
                      fontSize: 70,
                      fontFamily: "Questrial",
                      fontWeight: FontWeight.w900,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 2.5
                        ..color = Colors.black),
                ),
                const Text(
                  "Paideia",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 70,
                    fontFamily: "Questrial",
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 121,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 184.0),
            child: Image.asset("assets/images/Ellipse1.png"),
          )
        ],
      ),
    );
  }
}
