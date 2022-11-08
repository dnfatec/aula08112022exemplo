import 'package:exgravacao/telas/prova.dart';
import 'package:exgravacao/telas/tela_Adicionar.dart';
import 'package:exgravacao/telas/tela_consulta.dart';
import 'package:flutter/material.dart';

import '../widgets/widget_button.dart';
class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Escolha a opção 2"),
      ),
      body: _body(context),
    );
  }

  _body(BuildContext ctx) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Buttons("Cadastrar", onPressed:() {_abreTelas(ctx, TelaAdicionar() );}),
          Buttons("Consultar", onPressed: () {_abreTelas(ctx, TelaConsulta() );}),
          Buttons("Prova", onPressed: () {_abreTelas(ctx, Prova() );})

        ],
      ),
    );
  }


  _abreTelas(ctx, page){
    Navigator.push(ctx, MaterialPageRoute(builder: (BuildContext context)
    {
      return page;
    }));
  }

}
