import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  
  final int nota;
  final void Function() qndReiniciarQuest;

  Resultado(this.nota, this.qndReiniciarQuest);

  String get fraseResultado{
    if(nota == 30){
      return 'Parabéns! Pelos cálculos você é uma pessoa inteligente!';
    } else if(nota == 10){
      return 'Que pena! Pelos cálculos você tem péssimo gosto!';
    } else {
      return 'Oh meu Deus!!! Você é uma pessoa horrível!!!';
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: const TextStyle(fontSize: 25),
            textAlign: TextAlign.center,
          ),
        ),
        ElevatedButton(
          child: const Text(
            'Reiniciar?',
            style: TextStyle(
              fontSize: 16,
              ),
            ),
          style: ElevatedButton.styleFrom(
            primary: Colors.lightBlue,
            elevation: 20
          ),
          onPressed: qndReiniciarQuest,
        )
      ],
    );
  }
}
            