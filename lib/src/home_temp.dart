import 'package:flutter/material.dart';

class HomeTempPage extends StatelessWidget {
  const HomeTempPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("aea"),
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text("PErra"),
          ),
          Divider(),
          ListTile(
            title: Text("PErra"),
          ),
          Divider(),
          ListTile(
            title: Text("PErra"),
          )
        ],
      ),
    );
  }
}
