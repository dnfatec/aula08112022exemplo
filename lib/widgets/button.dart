import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String texto;
  final void Function() onPressed;
  MyButton(this.texto, {required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          textStyle: TextStyle(
            fontSize: 18,
            fontFamily: 'Impact',
          ),
          onPrimary: Colors.blueGrey[600],
          primary: Colors.white,
          minimumSize: Size(88, 36),
          padding: EdgeInsets.symmetric(vertical: 20),
        ),
        onPressed: onPressed,
        child: Text(texto));
  }
}
