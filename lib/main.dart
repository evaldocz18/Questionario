import 'package:flutter/material.dart';

void main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  //var _perguntaSelecionada = 0;

  void responder() {
    print('Pergunta respondida!');
  }

  void Function() funcaoRestona() {
    return () {
      print('Pergunta respondida dentre da outra');
    };
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita',
      'Qual é o seu animal favorito',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[0]),
            RaisedButton(child: Text('Resposta 1'), onPressed: responder),
            RaisedButton(child: Text('Resposta 2'), onPressed: responder),
            RaisedButton(child: Text('Resposta 3'), onPressed: funcaoRestona()),
          ],
        ),
      ),
    );
  }
}
