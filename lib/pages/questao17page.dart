import 'package:flutter/material.dart';

class Questao17Page extends StatefulWidget {
  const Questao17Page({super.key});

  @override
  State<Questao17Page> createState() => _Questao17PageState();
}

class _Questao17PageState extends State<Questao17Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q17: Tipos de Widgets (Prático)')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              "O Flutter tem 2 tipos principais de Widgets. Vamos ver a diferença na prática:",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),

            // --- TIPO 1: STATELESS ---
            const Text("1. StatelessWidget", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.blueGrey)),
            const Text("(Sem Estado / Estático)", style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.blueGrey[100], borderRadius: BorderRadius.circular(15)),
              child: const Column(
                children: [
                  Icon(Icons.lock, size: 50, color: Colors.blueGrey),
                  SizedBox(height: 10),
                  Text(
                    "Eu sou imutável. Depois que sou desenhado, não consigo mudar nada sozinho.",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Chip(label: Text("Sou apenas visual")),
                ],
              ),
            ),

            const SizedBox(height: 40),
            const Divider(thickness: 2),
            const SizedBox(height: 20),

            const Text("2. StatefulWidget", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.blue)),
            const Text("(Com Estado / Dinâmico)", style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 10),
            
            const MeuWidgetStateful(),
          ],
        ),
      ),
    );
  }
}


class MeuWidgetStateful extends StatefulWidget {
  const MeuWidgetStateful({super.key});

  @override
  State<MeuWidgetStateful> createState() => _MeuWidgetStatefulState();
}

class _MeuWidgetStatefulState extends State<MeuWidgetStateful> {
  int _contador = 0;
  Color _corAtual = Colors.blue;

  void _mudarEstado() {
    setState(() {
      _contador++;
      _corAtual = _contador % 2 == 0 ? Colors.blue : Colors.deepOrange;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: _corAtual.withOpacity(0.1), 
        border: Border.all(color: _corAtual, width: 2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Icon(Icons.touch_app, size: 50, color: _corAtual),
          const SizedBox(height: 10),
          Text(
            "Sei que você clicou $_contador vezes.",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, color: _corAtual),
          ),
          const SizedBox(height: 15),
          ElevatedButton.icon(
            onPressed: _mudarEstado,
            style: ElevatedButton.styleFrom(backgroundColor: _corAtual),
            icon: const Icon(Icons.add, color: Colors.white),
            label: const Text("setState()", style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    );
  }
}