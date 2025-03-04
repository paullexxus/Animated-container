import 'package:flutter/material.dart';
import 'dart:math';

void main() => (const AnimatedContainerApp());

class AnimatedContainerApp extends StatefulWidget {
  const AnimatedContainerApp ({super.key});

  @override
  State<AnimatedContainerApp> createState() => _AnimatedContainerAppState();
}

class _AnimatedContainerAppState extends State <AnimatedContainerApp> {

  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Animated Container'),
        ),
        body: Center(
          child: AnimatedContainer(
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              color: _color,
              borderRadius: _borderRadius,
            ),
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,

          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              final random = Random();
              _width = random.nextInt(300).toDouble();
              _height = random.nextInt(300).toDouble(); 
              _color = Color.fromRGBO(
                random.nextInt(256),
                random.nextInt(256),
                random.nextInt(256),
                1,
              );
              _borderRadius = 
              BorderRadius.circular(random.nextInt(100).toDouble());

            });
          },
          child: const Icon(Icons.play_arrow),
          ),
      ),
    );
  }
}