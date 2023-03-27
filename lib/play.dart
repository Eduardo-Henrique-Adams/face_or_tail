import 'dart:math';
import 'package:flutter/material.dart';
import 'result.dart';

class Play extends StatefulWidget {
  const Play({super.key});

  @override
  State<Play> createState() => _PlayState();
}

class _PlayState extends State<Play> {
  void _exibirResultado() {
    var itens = ["cara", "coroa"];
    var numero = Random().nextInt(itens.length);
    var resultado = itens[numero];

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Result(
                  resultado,
                  valor: '',
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff61bd86),
      //backgroundColor: Color.fromRGBO(255, 204, 128, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset("imagens/logo.png"),
          GestureDetector(
            onTap: _exibirResultado,
            child: Image.asset("imagens/botao_jogar.png"),
          )
        ],
      ),
    );
  }
}
