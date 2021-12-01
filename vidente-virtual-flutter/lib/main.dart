import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: VidenteVirtualPage(),
  ));
}

class VidenteVirtualPage extends StatelessWidget {
  //const VidenteVirtualPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff332B25),
      appBar: AppBar(
        backgroundColor: Colors.brown[800],
        title: Center(
            child: Text('Vidente Virtual', style: TextStyle(fontWeight: FontWeight.bold)),
        ),
      ),
      body: Vidente(

      ),
    );
  }
}

class Vidente extends StatefulWidget {
  //const Vidente({Key? key}) : super(key: key);
  @override
  _VidenteState createState() => _VidenteState();
}

class _VidenteState extends State<Vidente> {

  int numImage = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: TextButton(
            onPressed: () { setState(() {
              numImage = Random().nextInt(5)+2;
              //print(numImage);
              });
            },
            child: Image.asset('imagens/vidente$numImage.png'),
          ),
      ),
    );
  }
}


