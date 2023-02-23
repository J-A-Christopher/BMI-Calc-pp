import 'package:flutter/material.dart';

class Display extends StatefulWidget {
  double answer1;
  Display(this.answer1, {super.key});

  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff050A30),
      appBar: AppBar(
        elevation: 0,
        title: const Center(
            child: Text(
          'BMI CALCULATOR',
        )),
      ),
      body: Column(
        children: [
          const Text(
            'Your Result',
            style: TextStyle(color: Colors.white, fontSize: 35),
          ),
          Center(
              child: Text(
            widget.answer1.toStringAsFixed(2),
            style: const TextStyle(color: Colors.white, fontSize: 24),
          )),
        ],
      ),
    );
  }
}
