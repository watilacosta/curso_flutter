import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/resultado.dart';
import './resultado.dart';
import './questionario.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final _perguntas = const [
    {
      'pergunta': 'Qual é a sua cor favorita?',
      'respostas': ['Azul', 'Verde', 'Amarelo', 'Roxo']
    },
    {
      'pergunta': 'Qual é o seu animal favorito?',
      'respostas': ['Cachorro', 'Gato', 'Sapo', 'Pássaro']
    },
    {
      'pergunta': 'Qual seu hobbie favorito?',
      'respostas': ['Parque', 'Aviação', 'Shopping', 'Cinema']
    }
  ];

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Perguntas'),
      ),
      body: temPerguntaSelecionada ? Questionario() : Resultado(),
    ));
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
