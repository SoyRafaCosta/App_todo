import 'package:app_todo/cadastro.dart';
import 'package:app_todo/listagem.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      initialRoute: '/listagem',
      routes: {
        '/': (context) => const HomePage(),
        '/listagem': (context) => const Listagem(),
      },
    );
  }
}
