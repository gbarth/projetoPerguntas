import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main(){
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp>{
  var _perguntaSelecionada = 0;

  void _responder(){
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }
  
  @override
  Widget build(BuildContext context){
    final perguntas = [
      'Qual sua cor favorita?',
      'Qual seu animal favorito?',
    ];
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            width: double.infinity,
            child: const Text(
              'Perguntas',
              textAlign: TextAlign.center,
              ),
            ),
          ),
          body: Column(
            children: [
              Questao(perguntas[_perguntaSelecionada]),
              Resposta('Resposta 1'),
              Resposta('Resposta 2'),
              Resposta('Resposta 3'),
            ],
          ), 
        ),
      );
  }
}

class PerguntaApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _PerguntaAppState();
  }
}