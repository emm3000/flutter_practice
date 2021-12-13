
// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cards"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          _cardTipo1(),
          SizedBox(height: 10,),
          _cardTipo2()
        ],
      ),
    );
  }

  _cardTipo2() {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage("assets/jar-loading.gif"),
            image: NetworkImage("https://www.xtrafondos.com/wallpapers/jennie-de-blackpink-5142.jpg"),
            fadeInDuration: Duration(milliseconds: 200),
            height: 250,
            fit: BoxFit.cover,
          ),
          // SizedBox(height: 10,),
          // const Image(
          //   image: NetworkImage("https://www.xtrafondos.com/wallpapers/jennie-de-blackpink-5142.jpg"),
          // ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text("No tengo idea que poner"),
          )
        ],
      ),
    );
  }

  _cardTipo1() {
    return Card(
      elevation: 10,
      child: Column(
        children: <Widget>[
          const ListTile(
            title: Text("perra"),
            leading: Icon(Icons.photo_album, color: Colors.blue,),
            subtitle: Text("loremText(String data, {Key? key, TextStyle? style, StrutStyle? strutStyle, TextAlign? textAlign, Tex "),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const <Widget>[
              TextButton(
                onPressed: null,
                child: Text("CANCELAR"),
              ),
              TextButton(
                onPressed: null,
                child: Text("OK"),
              )
            ],
          )
        ],
      ),
    );
  }
} 