import 'package:flutter/material.dart';

class Questionario extends StatelessWidget {
  // final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function() responder;

  Questionario({
    @required this.perguntas,
    @required this.perguntaSelecionada,
    @required this.responder,
  })

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }
 
  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas']
        : null;

    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]['pergunta']),
        ...respostas.map((texto) => Resposta(texto, responder)).toList(),
      ],
    );
  }
}
