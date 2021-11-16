import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue[500],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(        // Primeira linha com dois quadrados brancos
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(    // Quadrado 1
                    color: Colors.white,
                    width: 100,
                    height: 100,
                    child: Center
                      (child: Text('Quadrado 1', style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic))
                    ),
                  ),
                  Container(    // Quadrado 2
                    color: Colors.white,
                    width: 100,
                    height: 100,
                    padding: EdgeInsets.fromLTRB(10, 40, 10, 40),
                    child: Text('Quadrado 2', style: TextStyle(fontSize: 15)),
                  ),
                ],
              ),

              Container(    // Quadrado meio (desafio aula 15)
                color: Colors.black,
                width: 200,
                height: 150,
                child: Center(
                    child: Text('Desafio aula 15', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white))
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(      // Quadrado 3
                    color: Colors.white,
                    width: 100,
                    height: 100,
                    padding: EdgeInsets.only(top:40),
                    child: Text('Quadrado 3', textAlign: TextAlign.center)
                  ),

                  Container(      // Quadrado 4
                    color: Colors.white,
                    width: 100,
                    height: 100,
                    child: Align(
                        alignment: Alignment(0.0, 0.0),
                        child: Text('Quadrado 4', style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic))
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
