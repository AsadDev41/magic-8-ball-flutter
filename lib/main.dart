import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 101, 171, 228),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Magic  ball Flutter'),
        ),
        body: MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int faceball = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  faceball = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$faceball.png'),
            ),
          ),
        ],
      ),
    );
  }
}
