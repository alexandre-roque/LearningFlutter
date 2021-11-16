import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//TODO - 1: Adicione uma tela em branco (Scaffold) e defina a cor de fundo para 'balck12, ou seja criativo e escolha sua própria cor'

//TODO - 2: Crie uma appBar para o aplicativo, como título: 'Calculadora', cor de fundo: 'black, ou seja criativo e escolha sua própria cor'

//TODO - 3: Crie um corpo para o app Utilizando o Widget Column. Dentro dessa coluna inclua um container que temporariamente
//servirá como nosso display. Altere a propriedade color desse container para: 'white', dê um espaçamento nas margens de: '15'.
// O width deve ser: '400' e o height: '120'. Exiba o texto 'visor' no centro do container, o tamanho da fonte deve ser: '50'.

//TODO - 4: Crie um novo Container, que receberá um column, que por sua vez receberá vários rows, que por sua vez
// receberão vários raisedbuttons para criar os botões da nossa calculadora.
// A calculadora deve ficar com o visual similar ao da imagem apresentada em:
// https://drive.google.com/file/d/1fuKl3cdlr1J-PsLLmKtStvgeHiaeahO6/view?usp=sharing.
// Dicas: pesquisem no flutter.dev pelas classes/widgets: 'Expanded' e 'RaisedButton'; As cores podem ser diferentes para os botões,
// fica a seu critério, porém, a estrutura dos botões deve ser a mesma apresentada na imagem.

void main() {
  runApp(MyApp());
}

class ContainerBotao extends Container{
  ContainerBotao(Color this.cor, String this.escrita, EdgeInsets this.margem):super(width: 100, height: 100, margin: margem);

  final String escrita;
  final Color cor;
  final EdgeInsets margem;

  @override
  // TODO: implement child
  Widget get child => ElevatedButton(onPressed: () {},
    child: Text('$escrita', style: TextStyle(fontSize: 30),),
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.black12),
      foregroundColor: MaterialStateProperty.all(cor),
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
                  Expanded(         // 'C'
                    child:Container(
                      margin: EdgeInsets.only(left: 20),
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('C', style: TextStyle(fontSize: 30),),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.black12),
                          foregroundColor: MaterialStateProperty.all(Colors.blue),
                        ),
                      ),
                    ),
                  ),

                  Expanded(       // 'DEL'
                    child: Container(
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('DEL', style: TextStyle(fontSize: 30),),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.black12),
                          foregroundColor: MaterialStateProperty.all(Colors.blue),
                        ),
                      ),
                    ),
                  ),

                  Expanded(       // '%'
                    child: Container(
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('%', style: TextStyle(fontSize: 30),),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.black12),
                          foregroundColor: MaterialStateProperty.all(Colors.blue),
                        ),
                      ),
                    ),
                  ),

                  Expanded(       // '/'
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('/', style: TextStyle(fontSize: 30),),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.black12),
                          foregroundColor: MaterialStateProperty.all(Colors.blue),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(         // '7'
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('7', style: TextStyle(fontSize: 30),),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.black12),
                          foregroundColor: MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                    ),
                  ),

                  Expanded(       // '8'
                    child: Container(
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('8', style: TextStyle(fontSize: 30),),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.black12),
                          foregroundColor: MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                    ),
                  ),

                  Expanded(       // '9'
                    child: Container(
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('9', style: TextStyle(fontSize: 30),),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.black12),
                          foregroundColor: MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                    ),
                  ),

                  Expanded(       // '*'
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('*', style: TextStyle(fontSize: 30),),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.black12),
                          foregroundColor: MaterialStateProperty.all(Colors.blue),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(         // '4'
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('4', style: TextStyle(fontSize: 30),),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.black12),
                          foregroundColor: MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                    ),
                  ),

                  Expanded(       // '5'
                    child: Container(
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('5', style: TextStyle(fontSize: 30),),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.black12),
                          foregroundColor: MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                    ),
                  ),

                  Expanded(       // '6'
                    child: Container(
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('6', style: TextStyle(fontSize: 30),),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.black12),
                          foregroundColor: MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                    ),
                  ),

                  Expanded(       // '+'
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('+', style: TextStyle(fontSize: 30),),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.black12),
                          foregroundColor: MaterialStateProperty.all(Colors.blue),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(         // '1'
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('1', style: TextStyle(fontSize: 30),),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.black12),
                          foregroundColor: MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                    ),
                  ),

                  Expanded(       // '2'
                    child: Container(
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('2', style: TextStyle(fontSize: 30),),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.black12),
                          foregroundColor: MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                    ),
                  ),

                  Expanded(       // '3'
                    child: Container(
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('3', style: TextStyle(fontSize: 30),),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.black12),
                          foregroundColor: MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                    ),
                  ),

                  Expanded(       // '-'
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('-', style: TextStyle(fontSize: 30),),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.black12),
                          foregroundColor: MaterialStateProperty.all(Colors.blue),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(         // '0'
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('0', style: TextStyle(fontSize: 30),),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.black12),
                          foregroundColor: MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                    ),
                  ),

                  Expanded(       // '.'
                    child: Container(
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('.', style: TextStyle(fontSize: 30),),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.black12),
                          foregroundColor: MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                    ),
                  ),

                  Expanded(       // '='
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('=', style: TextStyle(fontSize: 30),),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.black12),
                          foregroundColor: MaterialStateProperty.all(Colors.blue),
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

