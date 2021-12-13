// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
      body: Center(
        child: ElevatedButton(
          child: Text("Aea"),
          onPressed: () => _mostrarAlerta(context),
          style: ElevatedButton.styleFrom(
              primary: Colors.black54, shape: StadiumBorder()),
        ),
      ),
    );
  }

  void _mostrarAlerta(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            title: Text(
              "Esto es un dialog",
              style: TextStyle(color: Colors.red),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                    "contenido de la caja de alerta ae amanito esta es una cagadita"),
                SizedBox(
                  height: 20,
                ),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            actions: [
              TextButton(onPressed: () {}, child: Text("OK")),
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text("CANCELAR"))
            ],
          );
        });
  }
}
