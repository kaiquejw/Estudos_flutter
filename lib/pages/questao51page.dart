import 'package:flutter/material.dart';

class Questao51Page extends StatelessWidget {
  const Questao51Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q51:Const')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const Text(
              "Constantes Imutáveis",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            
            const SizedBox(height: 10),
            
            const Text(
              "Usamos 'const' quando sabemos o valor de uma variável em tempo de execução. Isso avisa ao Flutter: 'Não precisa recriar esse widget, ele nunca muda'.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),

            const SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildComparisionCard(
                  "Sem const", 
                  Icons.refresh, 
                  const Color.fromARGB(255, 230, 32, 6), 
                  "Recriado a cada build (gasta processamento)."
                ),
                _buildComparisionCard(
                  "Com const", 
                  Icons.lock_outline, 
                  Colors.green, 
                  "Criado uma única vez na memória (otimizado)."
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildComparisionCard(String title, IconData icon, Color color, String desc) {
    return Expanded(
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Icon(icon, size: 40, color: color),
              const SizedBox(height: 10),
              Text(title, style: TextStyle(fontWeight: FontWeight.bold, color: color)),
              const SizedBox(height: 5),
              Text(desc, textAlign: TextAlign.center, style: const TextStyle(fontSize: 12)),
            ],
          ),
        ),
      ),
    );
  }
}