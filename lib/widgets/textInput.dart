import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Input extends StatelessWidget {
  late String param;
  Input(this.param);

  @override
  Widget build(BuildContext context) {
    return Text(
      param,
      style: TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontFamily: 'Impact',
      ),
    );
  }
}
