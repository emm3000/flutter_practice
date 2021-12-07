import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class MenuProvider {

  List<dynamic> opciones = [];

  Future<List<dynamic>> cargarData() async {
    var dataMap = await rootBundle.loadString('data/menu_opts.json');
    print(dataMap);
    return json.decode(dataMap)['rutas'];
  }

}

final menuProvider = MenuProvider();