import 'package:flutter/material.dart';
import 'package:proyecto2/src/login.dart';
import 'package:proyecto2/src/homePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App'),
        ),
        body: const login(),
      ),
      onGenerateRoute: (RouteSettings settings) {
        //definir rutas de app
        switch (settings.name) {
          case '/homePage':
            return MaterialPageRoute(builder: (_) => const HomePage());
        }
        return null;
      },
    );
  }
}
