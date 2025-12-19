import 'package:flutter/material.dart';

class Questao32Page extends StatelessWidget {
  const Questao32Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q32: Tree Shaking')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            const Text(
              "Otimização de Código",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),            
            const Text(
              "Tree Shaking é o processo de remover automaticamente o código que você escreveu (ou importou) mas não está usando.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),

            const SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCodeBox("Código Total", Colors.grey, "100%"),
                const Icon(Icons.arrow_forward, color: Colors.green),
                _buildCodeBox("Apenas o Útil", Colors.green, "60%"),
              ],
            ),

            const SizedBox(height: 30),

            Card(
              color: Colors.green[50],
              elevation: 0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12), side: BorderSide(color: Colors.green.shade200)),
              child: const ListTile(
                leading: Icon(Icons.cleaning_services, color: Colors.green),
                title: Text("Resumo"),
                subtitle: Text("Ele reduz o tamanho final do aplicativo e melhora o desempenho removendo o 'código morto'."),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCodeBox(String label, Color color, String size) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(color: color.withOpacity(0.2), borderRadius: BorderRadius.circular(10), border: Border.all(color: color, width: 2)),
          child: Center(child: Text(size, style: TextStyle(fontWeight: FontWeight.bold, color: color, fontSize: 18))),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
      ],
    );
  }
}