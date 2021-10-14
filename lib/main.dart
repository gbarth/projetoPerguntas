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
      'texto' : 'Qual destas cores é sua favorita?',
      'respostas' : [
        {'texto': 'Azul', 'nota': '10'}, 
        {'texto': 'Vermelho', 'nota': '10'},
        {'texto': 'Verde', 'nota': '10'},
        {'texto': 'Amarelo', 'nota': '10'},
      ],
    },
    {
      'texto' : 'Qual destes animais é seu favorito?',
      'respostas' : [
        {'texto': 'Elefante', 'nota': '10'}, 
        {'texto': 'Macaco', 'nota': '10'},
        {'texto': 'Tubarão', 'nota': '10'},
        {'texto': 'Pelicano', 'nota': '10'},
      ],
    },
    {
      'texto' : 'Qual destes é seu time do coração?',
      'respostas' : [
        {'texto': 'Boafogo', 'nota': '10'}, 
        {'texto': 'Fluminense', 'nota': '-20'},
        {'texto': 'Vasco', 'nota': '-20'},
        {'texto': 'Flamengo', 'nota': '-20'},
      ],
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