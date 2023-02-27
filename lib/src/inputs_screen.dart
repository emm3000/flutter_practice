// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class InputsScreens extends StatelessWidget {
  const InputsScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inputs and forms"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              TextFormField(
                autofocus: true,
                initialValue: '',
                textCapitalization: TextCapitalization.words,
                onChanged: (value) => print(value),
                validator: (value) {
                  return (value?.length ?? 0) < 3 ? 'Minimo de 3 letras': null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}