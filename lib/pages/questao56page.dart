import 'package:flutter/material.dart';

class Questao56Page extends StatelessWidget {
  const Questao56Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q56: Reduzir Reconstrução')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const Text(
              "Dividir para Conquistar",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Se um widget é muito grande, qualquer 'setState' reconstrói TUDO. A solução é dividir a árvore em widgets menores e usar 'const'.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),

            const SizedBox(height: 40),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: _buildTreeExample("Monolito", Colors.red, "setState aqui recria a tela inteira.")),
                const SizedBox(width: 15),
                Expanded(child: _buildTreeExample("Modular", Colors.green, "setState afeta apenas o componente pequeno.")),
              ],
            ),

            const SizedBox(height: 30),

            const Card(
              child: ListTile(
                leading: Icon(Icons.lightbulb, color: Colors.amber),
                title: Text("Dica"),
                subtitle: Text("Use 'const' nos widgets filhos que não mudam. O Flutter vai ignorá-los durante a reconstrução!"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTreeExample(String title, Color color, String desc) {
    return Column(
      children: [
        Container(
          height: 120,
          width: double.infinity,
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: color, width: 2),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.widgets, color: color, size: 40),
              if (color == Colors.green) 
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.crop_square, size: 15, color: color),
                    Icon(Icons.crop_square, size: 15, color: color),
                    Icon(Icons.crop_square, size: 15, color: color),
                  ],
                )
            ],
          ),
        ),
        const SizedBox(height: 10),
        Text(title, style: TextStyle(fontWeight: FontWeight.bold, color: color)),
        const SizedBox(height: 5),
        Text(desc, textAlign: TextAlign.center, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}