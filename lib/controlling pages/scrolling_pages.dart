import 'package:education_app/screens/firstscreen.dart';
import 'package:education_app/screens/log_in_screen.dart';
import 'package:education_app/screens/secondscreen.dart';
import 'package:education_app/screens/thirdscreen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MovingPage extends StatefulWidget {
  const MovingPage({super.key});

  @override
  State<MovingPage> createState() => _HomePageState();
}

class _HomePageState extends State<MovingPage> {
  final _controller = PageController();
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).height,
            child: PageView(
              controller: _controller,
              children: const [First(), Second(), Third()],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 598.0),
              child: SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: const JumpingDotEffect(
                  activeDotColor: Color.fromARGB(255, 216, 72, 211),
                  dotColor: Color.fromARGB(255, 215, 215, 215),
                  spacing: 15,
                  dotHeight: 12,
                  dotWidth: 12,
                ),
                onDotClicked: (index) => _controller.animateToPage(index,
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeIn),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 709.0),
            child: Row(
              children: [
                const SizedBox(
                  width: 80,
                ),
                TextButton(
                    style: const ButtonStyle(
                        overlayColor:
                            MaterialStatePropertyAll(Colors.transparent)),
                    onPressed: () {
                      setState(() {
                        if (index <= 2) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignUp(),
                              ));
                        }
                      });
                    },
                    child: Text(
                      index <= 2 ? "SKIP" : "",
                      style: const TextStyle(
                          fontFamily: "Questrial",
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    )),
                const SizedBox(
                  width: 100,
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      if (index < 3) {
                        nextPage(index);
                        index++;
                      } else {Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignUp(),
                              ));}
                    });
                  },
                  child: Text(
                    index <= 2 ? "NEXT" : "GET STARTED",
                    style: const TextStyle(
                        fontFamily: "Questrial",
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void nextPage(index) {
    _controller.animateToPage(index,
        duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
  }
}
