import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        appBar: AppBar(
          title: Text('Dadoos'),
          backgroundColor: Colors.teal.shade900,
        ),
        body: Dadoos(),
      ),
    ),
  );
}

class Dadoos extends StatefulWidget {
  //const Dadoos({Key? key}) : super(key: key);

  @override
  _DadoosState createState() => _DadoosState();
}

class _DadoosState extends State<Dadoos> {
  int numDadoEsquerdo = Random().nextInt(6)+1;
  int numDadoDireito = Random().nextInt(6)+1;

  void modificaFaceDados(){
    setState(() {
      numDadoDireito = Random().nextInt(6)+1;
      numDadoEsquerdo = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            // Primeira Imagem
            child: TextButton(
              onPressed: () {
                modificaFaceDados();
              },
              child: Image.asset('imagens/dado$numDadoEsquerdo.png'),
            ),
          ),
          Expanded(
            // Segunda Imagem
            child: TextButton(
              onPressed: () {
                modificaFaceDados();
              },
              child: Image.asset('imagens/dado$numDadoDireito.png'),
            ),
          ),
        ],
      ),
    );
  }
}
