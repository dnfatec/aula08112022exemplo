import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Textos extends StatelessWidget {
  late String param;
  Textos(this.param);

  @override
  Widget build(BuildContext context) {
    return Text(
      param,
      style: TextStyle(
        color: Colors.black,
        fontSize: 24,
        fontFamily: 'Impact',
      ),
    );
  }
}
