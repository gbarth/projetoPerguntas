import 'package:flutter/material.dart';
import './resposta.dart';
import './questao.dart';

class Questionario extends StatelessWidget {
  final int perguntaSelecionada;
  final List<Map<String, Object>> perguntas;
  final void Function(int) responder;

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
    List<Map<String, Object>> resps = temPerguntaSelecionada ?
     perguntas[perguntaSelecionada].cast()['respostas']
     : [];

    return Column(
        children: <Widget> [
          Questao(perguntas[perguntaSelecionada]['texto'].toString()),
          ...resps.map((resp) => Resposta(
            resp['texto'].toString(), 
            () => responder(int.parse(resp['nota'].toString())))).toList(),
        ],
      );
  }
}