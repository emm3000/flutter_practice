import 'dart:math';

import 'package:flutter/material.dart';

class ContainerWidgePage extends StatefulWidget {
  const ContainerWidgePage({Key? key}) : super(key: key);

  @override
  _ContainerWidgePageState createState() => _ContainerWidgePageState();
}

class _ContainerWidgePageState extends State<ContainerWidgePage> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  void changeShape() {
      final random = Random();

    setState(() {

      _width = random.nextInt(300).toDouble() + 70;
      _height = random.nextInt(300).toDouble() + 70;
      _color = Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble() + 25);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("annimated container"),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInCubic,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_circle, size: 30,),
        onPressed: changeShape,
      ),
    );
  }
}