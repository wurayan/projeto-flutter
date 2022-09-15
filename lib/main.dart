import 'package:flutter/material.dart';
import 'package:horrorland/screens/gallifrey.dart';
import 'package:horrorland/screens/telainicial.dart';
import 'package:horrorland/screens/telaplanetas.dart';
import 'package:horrorland/screens/telastats.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'ROMUT',
      home: Gallifrey(),
    );
  }
}

