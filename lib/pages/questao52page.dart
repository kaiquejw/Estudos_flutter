import 'package:flutter/material.dart';

class Questao52Page extends StatelessWidget {
  const Questao52Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q52: Operadores Dart')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const Text(
              "Operadores em Dart",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            _buildOperatorTile(
              symbol: "=",
              name: "Atribuição",
              desc: "Coloca um valor dentro da variável.",
              example: "String nome = 'Kaique';",
            ),
            _buildOperatorTile(
              symbol: "??",
              name: "Null-Aware",
              desc: "Usa um valor padrão se a variável for nula.",
              example: "nome ?? 'Visitante'",
              color: Colors.orange,
            ),
            _buildOperatorTile(
              symbol: "!",
              name: "Bang Operator",
              desc: "Garante ao Dart que o valor NÃO é nulo.",
              example: "texto!.length",
              color: Colors.red,
            ),
            _buildOperatorTile(
              symbol: ".",
              name: "Dot (Acesso)",
              desc: "Acessa propriedades ou métodos de um objeto.",
              example: "pessoa.idade",
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOperatorTile({required String symbol, required String name, required String desc, required String example, Color color = Colors.black87}) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 50,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                symbol,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: color),
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  const SizedBox(height: 5),
                  Text(desc, style: TextStyle(color: Colors.grey[700], fontSize: 13)),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    color: Colors.grey[100],
                    child: Text(example, style: const TextStyle(fontFamily: 'monospace', fontSize: 12)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}