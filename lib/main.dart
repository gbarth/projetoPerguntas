import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main(){
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp>{
  var _perguntaSelecionada = 0;
  final _perguntas = const [
    {
      'texto' : 'Qual sua cor favorita?',
      'respostas' : ['Azul', 'Vermelho', 'Verde', 'Amarelo'],
    },
    {
      'texto' : 'Qual seu animal favorito?',
      'respostas' : ['Elefante', 'Coelho', 'Leão', 'Tubarão'],
    },
    {
      'texto' : 'Qual seu time do coração?',
      'respostas' : ['Botafogo', 'Vasco', 'Fluminense', 'Flamengo'],
    }
  ];

  void _responder(){
    if(temPerguntaSelecionada){
      setState(() {
      _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada{
    return _perguntaSelecionada < _perguntas.length;
  }
  
  @override
  Widget build(BuildContext context){
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
          body: temPerguntaSelecionada 
          ? Questionario(perguntas: _perguntas, perguntaSelecionada: _perguntaSelecionada, responder: _responder)
          : Resultado('Parabéns'),
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