import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
/*
class ExpandedBotao extends Expanded{
  ExpandedBotao(Color this.cor, String this.escrita, EdgeInsets this.margem);
  final String escrita;
  final Color cor;
  final EdgeInsets margem;

  @override
  Widget get child => Container(
    margin: margem,
    width: 100,
    height: 100,

    child: ElevatedButton(onPressed: () {},
      child: Text('$escrita', style: TextStyle(fontSize: 30),),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.black12),
        foregroundColor: MaterialStateProperty.all(cor),
      ),
    ),
  );
}
 */

class MyApp extends StatefulWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String textoVisor = 'Visor';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black12,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('Calculadora'),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                // Visor
                color: Colors.white,
                height: 100,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.center,
                child: Text(
                  '$textoVisor',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                // Primeira linha
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            textoVisor = 'Limpar Tela';
                          });
                        },
                        child: Text(
                          'C',
                          style: TextStyle(fontSize: 30),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black12),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.blue),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            textoVisor = 'Deletar';
                          });
                        },
                        child: Text(
                          'DEL',
                          style: TextStyle(fontSize: 30),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black12),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.blue),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            textoVisor = 'M??dulo';
                          });
                        },
                        child: Text(
                          '%',
                          style: TextStyle(fontSize: 30),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black12),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.blue),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            textoVisor = 'Divis??o';
                          });
                        },
                        child: Text(
                          '/',
                          style: TextStyle(fontSize: 30),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black12),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.blue),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            textoVisor = 'N??mero 7';
                          });
                        },
                        child: Text(
                          '7',
                          style: TextStyle(fontSize: 30),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black12),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            textoVisor = 'N??mero 8';
                          });
                        },
                        child: Text(
                          '8',
                          style: TextStyle(fontSize: 30),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black12),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            textoVisor = 'N??mero 9';
                          });
                        },
                        child: Text(
                          '9',
                          style: TextStyle(fontSize: 30),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black12),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            textoVisor = 'Multiplica????o';
                          });
                        },
                        child: Text(
                          '*',
                          style: TextStyle(fontSize: 30),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black12),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.blue),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            textoVisor = 'N??mero 4';
                          });
                        },
                        child: Text(
                          '4',
                          style: TextStyle(fontSize: 30),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black12),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            textoVisor = 'N??mero 5';
                          });
                        },
                        child: Text(
                          '5',
                          style: TextStyle(fontSize: 30),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black12),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            textoVisor = 'N??mero 6';
                          });
                        },
                        child: Text(
                          '6',
                          style: TextStyle(fontSize: 30),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black12),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            textoVisor = 'Soma';
                          });
                        },
                        child: Text(
                          '+',
                          style: TextStyle(fontSize: 30),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black12),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.blue),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            textoVisor = 'N??mero 1';
                          });
                        },
                        child: Text(
                          '1',
                          style: TextStyle(fontSize: 30),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black12),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            textoVisor = 'N??mero 2';
                          });
                        },
                        child: Text(
                          '2',
                          style: TextStyle(fontSize: 30),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black12),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            textoVisor = 'N??mero 3';
                          });
                        },
                        child: Text(
                          '3',
                          style: TextStyle(fontSize: 30),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black12),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            textoVisor = 'Subtra????o';
                          });
                        },
                        child: Text(
                          '-',
                          style: TextStyle(fontSize: 30),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black12),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.blue),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            textoVisor = 'N??mero 0';
                          });
                        },
                        child: Text(
                          '0',
                          style: TextStyle(fontSize: 30),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black12),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            textoVisor = 'Ponto';
                          });
                        },
                        child: Text(
                          '.',
                          style: TextStyle(fontSize: 30),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black12),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            textoVisor = 'Igual';
                          });
                        },
                        child: Text(
                          '=',
                          style: TextStyle(fontSize: 30),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black12),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.blue),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
