import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  final String valor;
  const Result(String resultado, {super.key, required this.valor});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    //print(widget.valor);
    String caminhoImagem;

    if (widget.valor == "cara") {
      caminhoImagem = "imagens/moeda_cara.png";
    } else {
      caminhoImagem = "imagens/moeda_coroa.png";
    }

    return Scaffold(
      backgroundColor: const Color(0xff61bd86),
      //backgroundColor: Color.fromRGBO(255, 204, 128, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset(caminhoImagem),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset("imagens/botao_voltar.png"),
          )
        ],
      ),
    );
  }
}
