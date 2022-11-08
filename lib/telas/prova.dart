import 'package:exgravacao/widgets/text.dart';
import 'package:exgravacao/widgets/widget_button.dart';
import 'package:exgravacao/widgets/widget_input.dart';
import 'package:flutter/material.dart';

class Prova extends StatefulWidget {
  const Prova({Key? key}) : super(key: key);

  @override
  State<Prova> createState() => _ProvaState();
}

class _ProvaState extends State<Prova> {
  final _bananas= TextEditingController();
  final _macas= TextEditingController();
  final _batatas= TextEditingController();
  final _cebolas = TextEditingController();
  final _tomates = TextEditingController();
  //String _mensagem="";
  //String _valor="0.0";
  String _valorbruto="";
  String _valordesconto="";
  String _valorapagar="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Prova luiz"),
      ),
      body: _body(),
    );
  }

  _body() {
    return ListView(
      children: [
        InputTextos("Informe a Quantidade de Bananas", "Digite aqui", controller: _bananas),
        InputTextos("Informe a Quantidade de Maçãs", "Digite aqui", controller: _macas),
        InputTextos("Informe a Quantidade de Cebolas", "Digite aqui", controller: _cebolas),
        InputTextos("Informe a Quantidade de Batatas", "Digite aqui", controller: _batatas),
        InputTextos("Informe a Quantidade de Tomates", "Digite aqui", controller: _tomates),

        Buttons("Calcular", onPressed: _calcular),
        Textos("Valor Bruto: " + _valorbruto),
        Textos("Valor do desconto: -" + _valordesconto),
        Textos("Total a pagar: " + _valorapagar)
      ],
    );
  }

  void _calcular() {
    setState((){
      double batatas, bananas, cebolas, tomates, macas, valorbruto, valordesconto, valorapagar;
      batatas= double.parse(_batatas.text.toString());
      bananas = double.parse(_bananas.text.toString());
      cebolas = double.parse(_cebolas.text.toString());
      tomates = double.parse(_tomates.text.toString());
      macas = double.parse(_macas.text.toString());

      valorbruto = batatas + bananas + cebolas + tomates + macas;
      valordesconto = valorbruto * 0.3;
      valorapagar = valorbruto - valordesconto;

      _valorbruto = valorbruto.toString();
      _valordesconto = valordesconto.toString();
      _valorapagar = valorapagar.toString();
    });
  }

  /*_bodyFaltas() {
    return ListView(
      children: [
        InputTextos("Informe a qtd de faltas", "Digite aqui", controller: _qtdFaltas),
        InputTextos("Informe o percentual", "Digite aqui", controller: _percentualFaltas),
        Botoes("Calcular", onPressed: _calcularFaltas),
        Textos("" + _mensagem)
      ],
    );
  }

  void _calcularFaltas() {
    setState((){
      double qtd, percentual, calc;
      qtd = double.parse(_qtdFaltas.text.toString());
      percentual = double.parse(_percentualFaltas.text.toString());
      calc = qtd - ((qtd*percentual)/100);
      _mensagem = calc.toString();
    });
  }

  _layoutExpanded() {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max ,
        children: [
          Expanded(
              flex: 1,
              child:Container(
                color: Colors.cyanAccent,
                child: Row(
                  children: [
                    Textos("Texto01"),
                    Textos("Texto02"),
                    Textos("Texto03")
                  ],
                ),
              )
          ),
          Expanded(
              flex: 4,
              child:Container(
                color: Colors.green,
                child: Row(
                  children: [
                    Textos("Texto01"),
                    Textos("Texto02"),
                    Textos("Texto03")
                  ],
                ),
              )
          ),
          Expanded(
              flex: 2,
              child:Container(
                color: Colors.amber,
                child: Row(
                  children: [
                    Textos("Texto01"),
                    Textos("Texto02"),
                    Textos("Texto03"),

                  ],
                ),
              )
          ),
          Expanded(
              flex: 1,
              child:Container(
                color: Colors.deepPurple,
                margin: EdgeInsets.only(left: 5, right: 5, bottom: 15, top: 9),
                child: InputTextos("Digite um número", "Digite aqui", controller: _percentualFaltas,),
                alignment: AlignmentDirectional.center,
              )
          )



        ],
      ),
    );
  }*/

  void _novaTela(ctx, page) {
    Navigator.push(ctx, MaterialPageRoute(builder: (BuildContext context)
    {
      return page;
    }
    ));
  }
}
