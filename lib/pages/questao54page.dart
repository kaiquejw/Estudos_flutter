import 'package:flutter/material.dart';

class Questao54Page extends StatelessWidget {
  const Questao54Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q54: Tempo de Execução')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const Text(
              "Dois Motores",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "O Flutter usa dois compiladores diferentes para garantir a melhor experiência tanto para o programador quanto para o usuário final.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),

            const SizedBox(height: 40),

            _buildCompilerCard(
              title: "JIT (Just-In-Time)",
              subtitle: "Usado no Desenvolvimento",
              icon: Icons.developer_mode,
              color: Colors.blue,
              features: ["Permite Hot Reload", "Compilação sob demanda", "Mais lento para iniciar"],
            ),

            const SizedBox(height: 20),

            _buildCompilerCard(
              title: "AOT (Ahead-Of-Time)",
              subtitle: "Usado na Produção",
              icon: Icons.rocket_launch,
              color: Colors.green,
              features: ["Código de Máquina Nativo", "Sem Hot Reload", "Início instantâneo e suave"],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCompilerCard({required String title, required String subtitle, required IconData icon, required Color color, required List<String> features}) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15), side: BorderSide(color: color.withOpacity(0.5))),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(color: color.withOpacity(0.1), borderRadius: BorderRadius.circular(10)),
                  child: Icon(icon, color: color, size: 30),
                ),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: color)),
                    Text(subtitle, style: const TextStyle(fontSize: 12, color: Colors.grey)),
                  ],
                ),
              ],
            ),
            const Divider(height: 20),
            ...features.map((f) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(children: [Icon(Icons.check, size: 16, color: color), const SizedBox(width: 8), Text(f)]),
            )),
          ],
        ),
      ),
    );
  }
}