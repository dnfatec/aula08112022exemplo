import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class MyImage extends StatefulWidget {
  final String caminhoArquivo;
  const MyImage({key, required this.caminhoArquivo}) : super(key: key);

  @override
  State<MyImage> createState() => _MyImageState();
}

class _MyImageState extends State<MyImage> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      widget.caminhoArquivo,
      filterQuality: FilterQuality.high,
      fit: BoxFit.cover,
      scale: 50,
      colorBlendMode: BlendMode.darken,
    );
  }
}
