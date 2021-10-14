import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  
  final String texto;

  Resultado(this.texto);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        texto,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}