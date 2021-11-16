import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

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

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

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

              Container(                  // Visor
                color: Colors.white,
                height: 100,
                width: double.infinity,
                margin: EdgeInsets.symmetric( horizontal: 20),
                alignment: Alignment.center,
                child:
                  Text('Visor',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
              ),

              Row(          // Primeira linha
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ExpandedBotao(Colors.blue, 'C',EdgeInsets.only(left: 20)),

                  ExpandedBotao(Colors.blue, 'DEL',null),

                  ExpandedBotao(Colors.blue, '%',null),

                  ExpandedBotao(Colors.blue, '/',EdgeInsets.only(right: 20)),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ExpandedBotao(Colors.white, '7',EdgeInsets.only(left: 20)),

                  ExpandedBotao(Colors.white, '8',null),

                  ExpandedBotao(Colors.white, '9',null),

                  ExpandedBotao(Colors.blue,  '*',EdgeInsets.only(right: 20)),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ExpandedBotao(Colors.white, '4',EdgeInsets.only(left: 20)),

                  ExpandedBotao(Colors.white, '5',null),

                  ExpandedBotao(Colors.white, '6',null),

                  ExpandedBotao(Colors.blue, '+',EdgeInsets.only(right: 20)),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ExpandedBotao(Colors.white, '1',EdgeInsets.only(left: 20)),

                  ExpandedBotao(Colors.white, '2',null),

                  ExpandedBotao(Colors.white, '3',null),

                  ExpandedBotao(Colors.blue,  '-' ,EdgeInsets.only(right: 20)),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ExpandedBotao(Colors.white, '0',EdgeInsets.only(left: 20)),

                  ExpandedBotao(Colors.white, '.',EdgeInsets.only(left: 20)),

                  ExpandedBotao(Colors.blue,  '=',EdgeInsets.only(left: 20)),
                ],
              ),
            ],

          ),
        ),
      ),
    );
  }
}

