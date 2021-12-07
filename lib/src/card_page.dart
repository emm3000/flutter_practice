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
          _cardTipo1()
        ],
      ),
    );
  }

  _cardTipo2() {

  }

  _cardTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text("perra"),
            leading: Icon(Icons.photo_album, color: Colors.blue,),
            subtitle: Text("loremText(String data, {Key? key, TextStyle? style, StrutStyle? strutStyle, TextAlign? textAlign, Tex "),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
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