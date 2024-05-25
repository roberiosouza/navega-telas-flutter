import 'package:flutter/material.dart';

class TelaSecundaria extends StatefulWidget {
  String? nome;

  TelaSecundaria({this.nome});

  @override
  State<TelaSecundaria> createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Secundária"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [Text("Segunda Tela! ${widget.nome ?? ""}")],
        ),
      ),
    );
  }
}
