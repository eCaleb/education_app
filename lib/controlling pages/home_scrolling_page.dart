import 'package:education_app/controlling%20pages/scrolling_pages.dart';
import 'package:education_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();
  final index = 0;

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
              children: const [
                Home(),
                MovingPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
