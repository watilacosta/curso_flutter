import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto;

  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Center(
        child: Text(texto,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
            )),
      ),
    );
  }
}
