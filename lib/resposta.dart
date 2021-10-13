import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {

  final String texto;
  final void Function() wPressed;

  Resposta(this.texto, this.wPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blueAccent,
          onSurface: Colors.red,
          elevation: 20,
          shadowColor: Colors.blueAccent,
        ),
        child: Text(texto),
        onPressed: wPressed,
      ),
    );
  }
}