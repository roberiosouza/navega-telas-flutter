import 'package:flutter/material.dart';
import 'package:navega_telas/tela-secundaria.dart';
import 'package:navega_telas/terceira-tela.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {"/terceira-tela": (context) => TerceiraTela()},
    home: TelaPrincipal(),
  ));
}

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  TextEditingController _inputNome = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Principal"),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TelaSecundaria()));
                },
                child: Text("Ir para segunda tela")),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: TextField(
                keyboardType: TextInputType.text,
                controller: _inputNome,
                decoration: InputDecoration(
                    labelText: "Digite um nome", hintText: "Qualquer nome"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              TelaSecundaria(nome: _inputNome.text)));
                },
                child: Text("Enviar para outra Tela"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/terceira-tela");
                },
                child: Text("Terceira Tela Com Rotas Nomeadas"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
