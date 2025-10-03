import 'dart:math' as math;
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cinta de Fallecimiento',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MourningScreen(),
    );
  }
}

class MourningScreen extends StatelessWidget {
  const MourningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          const Center(
            child: Text(
              'En memoria',
              style: TextStyle(fontSize: 24, color: Colors.black54),
            ),
          ),
          Positioned(
            top: 40,
            right: -40,
            child: Transform.rotate(
              angle: math.pi / 4,
              child: Container(
                width: 150,
                height: 30,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
