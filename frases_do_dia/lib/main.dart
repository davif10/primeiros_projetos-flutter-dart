import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _frase = "Clique abaixo para gerar uma frase!";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          //width: double.infinity,
          /*decoration: BoxDecoration(
            border:  Border.all(width: 3, color: Colors.amber),
          ),*/
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("images/logo.png"),
              Text(
                _frase,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.black),
              ),
              TextButton(
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () {
                  setState(() {
                    _frase = gerarFrase();
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  String gerarFrase() {
    int number = Random().nextInt(5);
    String frase = "";
    switch (number) {
      case 0:
        frase = "Que o dia comece bem e termine ainda melhor.";
        break;
      case 1:
        frase = "Levanta, sacode a poeira e dá a volta por cima.";
        break;
      case 2:
        frase = "Que os dias ruins se tornem raros e os bons virem rotina.";
        break;
      case 3:
        frase = "Sonhar, viver e todo dia agradecer.";
        break;
      case 4:
        frase = "Comece acreditando que é possível.";
        break;
    }
    return frase;
  }
}
