import 'package:flutter/material.dart';
import './questao.dart';

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
          title: const Text('Perguntas'),
          ),
          body: Column(
            children: [
              Questao(perguntas[_perguntaSelecionada]),
              ElevatedButton(
                child: const Text('Resposta 1'),
                onPressed: _responder,
              ),
              ElevatedButton(
                child: const Text('Resposta 2'),
                onPressed: _responder,
              ),
              ElevatedButton(
                child: const Text('Resposta 3'),
                onPressed: _responder,
              ),
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