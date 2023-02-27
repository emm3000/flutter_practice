import 'package:flutter/material.dart';
import 'package:flutter_components/src/alert_page.dart';
import 'package:flutter_components/src/avatar_page.dart';
import 'package:flutter_components/src/card_page.dart';
import 'package:flutter_components/src/container_page.dart';
import 'package:flutter_components/src/home_page.dart';
import 'package:flutter_components/src/inputs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'cxxxxx',
      // home: HomePage()
      initialRoute: "/",
      routes: <String, WidgetBuilder>{
        "/": (BuildContext context) => const HomePage(),
        "alert": (BuildContext context) => const AlertPage(),
        "avatar": (BuildContext context) => const AvatarPage(),
        "card": (BuildContext context) => const CardPage(),
        "container": (BuildContext context) => const ContainerWidgePage(),
        "inputs": (BuildContext context) => const InputsScreens(),
      },
      onGenerateRoute: (sett) => 
        MaterialPageRoute(
          builder: (context) => const AlertPage(),
        ),
    );
  }
}
