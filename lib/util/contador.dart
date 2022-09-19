import 'package:flutter/material.dart';

class Contador {
  int _counter = 400;

  void menos(int valor) {
      _counter-valor;
  }

  void mais(int valor) {
      _counter+valor;
  }

  show(){
    return _counter;
  }
}