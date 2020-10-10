import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?'
    ];

    /* Esta função pode ser chamando no evento onPressed, pois retorna
    * uma outra funçao
    void Function() funcaoQueRetoraUmaOutraFuncao() {
      return() {
        print('Resposta #2');
      };
    }*/
    

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas[_perguntaSelecionada]),
            RaisedButton(
              onPressed: _responder,
              child: Text('Resposta 1'),
            ),
            RaisedButton(
              onPressed: _responder,
              child: Text('Resposta 2'),
            ),
            RaisedButton(
              onPressed: _responder,
              child: Text('Resposta 3'),
            )
          ],
        ),
      ),
    ); 
  }
}

class PerguntaApp extends StatefulWidget {
  
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}