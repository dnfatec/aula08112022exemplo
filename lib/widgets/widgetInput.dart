import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class MyInput extends StatelessWidget {
  //String label;

  TextEditingController controller;

  MyInput({required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,

      style: TextStyle(
        color: Colors.black,
      ),
      //decoration: InputDecoration(hintText: label),
    );
  }
}
