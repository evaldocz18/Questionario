import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestuinario;

  Resultado(this.pontuacao, this.quandoReiniciarQuestuinario);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'parabéns';
    } else if (pontuacao > 12) {
      return 'Você é bom';
    } else if (pontuacao > 18) {
      return 'Impressionante';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            'Parabéns!',
            style: TextStyle(fontSize: 28),
          ),
        ),
        FlatButton(
          child: Text('Reiniciar'),
          textColor:Colors.blue,
          onPressed: quandoReiniciarQuestuinario, 
          )
      ],
    );
  }
}
