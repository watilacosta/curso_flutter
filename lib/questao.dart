import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  
  final String texto;

  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        texto,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 28,
        )
      ),
    );
  }
}