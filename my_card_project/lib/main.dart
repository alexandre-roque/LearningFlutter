import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/fotoPerfil.png'),
              ),
              
              Text(
                'Alexandre Roque',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
              ),

              Text(
                  'Graduando em Eng de Computação',
                  style: TextStyle(fontFamily: 'SourceSansPro', fontSize: 20, color: Colors.lightBlue.shade50, fontWeight: FontWeight.bold, letterSpacing: 1.0),

              ),

              SizedBox(             // Linha entre texto e Card
                height: 25.0,
                width: 300.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),

              Card(
                margin: EdgeInsets.only(
                  top: 5,
                  bottom: 10,
                  left: 30,
                  right:30,
                ),

                child: Padding(
                  padding: EdgeInsets.all(5),

                  child: ListTile(
                    leading:
                      Icon(
                        Icons.phone,
                        size: 25,
                        color: Colors.lightBlue,
                      ),

                    title:
                    Text(
                      '+55 (31) 98657 9962',
                      style: TextStyle(fontFamily: 'Poppins', color:Colors.lightBlue, fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),


              Card(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 30,
                  ),

                  child: Padding(
                    padding: EdgeInsets.all(5),

                    child:
                    ListTile(
                      leading:
                        Icon(
                          Icons.email,
                          size: 25,
                          color: Colors.lightBlue,
                        ),
                      title:
                        Text(
                          'alexandreroque1@hotmail.com',
                          style: TextStyle(fontFamily: 'Poppins', color:Colors.lightBlue, fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                    ),
                  )
              )

            ],
          ),
        ),
      ),
    );
  }
}
