import 'package:flutter/material.dart';
import './resposta.dart';
import './questao.dart';

class Questionario extends StatelessWidget {
  final int perguntaSelecionada;
  final List<Map<String, Object>> perguntas;
  final void Function() responder;

  Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.responder,
  });
  
  bool get temPerguntaSelecionada{
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> resps = temPerguntaSelecionada ?
     perguntas[perguntaSelecionada].cast()['respostas']
     : [];

    return Column(
        children: <Widget> [
          Questao(perguntas[perguntaSelecionada]['texto'].toString()),
          ...resps.map((t) => Resposta(t, responder)).toList(),
        ],
      );
  }
}