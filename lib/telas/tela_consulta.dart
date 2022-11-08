import 'package:exgravacao/control/control.dart';
import 'package:exgravacao/widgets/widget_button.dart';
import 'package:exgravacao/widgets/widget_input.dart';
import 'package:exgravacao/widgets/widget_text_custom.dart';
import 'package:flutter/material.dart';
class TelaConsulta extends StatefulWidget {
  @override
  _TelaConsultaState createState() => _TelaConsultaState();
}

class _TelaConsultaState extends State<TelaConsulta> {
  String textoPesquisa = "";
  final _inputPesquisa = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consultar cliente"),
      ),
      body: _body(),
    );
  }

  _body() {
    return ListView(

      children: [
        Buttons("Pesquisar", onPressed: _pesquisar),
        InputTextos(
            "", "Digite um nome para pesquisa", controller: _inputPesquisa),
        TextosCustom(textoPesquisa, 19, Colors.red)
      ],
    );
  }

  Future _pesquisar() async {
    var control = new ControlCliente();
    int index=0;
    textoPesquisa = "\n";
    List<Map<String, dynamic>> list = await control.queryFind("e");
    list.forEach((element){
      textoPesquisa = textoPesquisa + list[index]["nome"].toString() + "\n";
      index++;
    });
    setState((){

    });
  }
}

