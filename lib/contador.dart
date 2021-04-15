import 'package:flutter/material.dart';

class Contador extends StatelessWidget {
  final Icon icon;
  final Function func;
  final Color cor;

  Contador({this.icon, this.func, this.cor});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: cor,
      onPressed: func,
      child: icon,
    );
  }
}
