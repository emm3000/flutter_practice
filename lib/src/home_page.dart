import 'package:flutter/material.dart';
import 'package:flutter_components/providers/menu_provider.dart';
import 'package:flutter_components/src/alert_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("xxxxxxxx"),
      ),
      body: FutureBuilder(
        future: menuProvider.cargarData(),
        initialData: const [],
        builder: (context, AsyncSnapshot<List<dynamic>> snap) {
          return ListView(
            children: snap.data?.map((e) {
              return ListTile(
                title: Text(e['text']),
                onTap: () {
                  // final route = MaterialPageRoute(
                  //   builder: (context) => const AlertPage()
                  // );
                  // Navigator.push(context, route);
                  Navigator.pushNamed(context, e["ruta"]);
                },
              );
            }).toList() ?? const [],
          );
        },
      )
    );
  }
 
}
