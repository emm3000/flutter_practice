import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AlertPage"),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text("atras"),
        onPressed: () => Navigator.pop(context),
        ),
    );
  }
}