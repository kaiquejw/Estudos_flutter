import 'package:flutter/material.dart';

class Questao5Page extends StatefulWidget {
  const Questao5Page({super.key});

  @override
  State<Questao5Page> createState() => _Questao5PageState();
}

class _Questao5PageState extends State<Questao5Page> {
  bool usarKeys = false; 
  late List<Widget> caixas;

  @override
  void initState() {
    super.initState();
    _gerarCaixas();
  }

  void _gerarCaixas() {
    caixas = [
      CaixaColorida(
        key: usarKeys ? UniqueKey() : null, 
        cor: Colors.blue, 
        nome: "Caixa 1"
      ),
      CaixaColorida(
        key: usarKeys ? UniqueKey() : null, 
        cor: Colors.red, 
        nome: "Caixa 2"
      ),
    ];
  }

  void _trocarLugar() {
    setState(() {
      caixas = caixas.reversed.toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    if (caixas.isEmpty) _gerarCaixas();

    return Scaffold(
      appBar: AppBar(title: const Text('Q5: Chaves (Keys)')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Card(
              color: Colors.amberAccent,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Teste Prático: Tente clicar em 'Trocar Posição' SEM chaves. As cores não vão trocar, depois ative as chaves e tente de novo.",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: caixas,
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Usar Chaves?"),
                Switch(
                  value: usarKeys,
                  onChanged: (v) {
                    setState(() {
                      usarKeys = v;
                      _gerarCaixas(); 
                    });
                  },
                ),
              ],
            ),
            ElevatedButton.icon(
              onPressed: _trocarLugar,
              icon: const Icon(Icons.swap_horiz),
              label: const Text("Trocar Posição"),
            ),
          ],
        ),
      ),
    );
  }
}

class CaixaColorida extends StatefulWidget {
  final Color cor;
  final String nome;
  const CaixaColorida({super.key, required this.cor, required this.nome});

  @override
  State<CaixaColorida> createState() => _CaixaColoridaState();
}

class _CaixaColoridaState extends State<CaixaColorida> {
  late Color corAtual;

  @override
  void initState() {
    super.initState();
    corAtual = widget.cor;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      margin: const EdgeInsets.all(10),
      color: corAtual,
      alignment: Alignment.center,
      child: Text(widget.nome, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
    );
  }
}