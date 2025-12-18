import 'package:flutter/material.dart';

class Questao37Page extends StatelessWidget {
  const Questao37Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q37: BuildContext')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "BuildContext",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text(
              "O BuildContext funciona informando exatamente onde o seu widget está na árvore do aplicativo.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),

            const SizedBox(height: 10),

            _buildInfoCard(
              title: "Localização",
              icon: Icons.place,
              color: Colors.redAccent,
              desc: "Cada widget tem seu próprio BuildContext, que representa sua posição única na estrutura.",
            ),

            const SizedBox(height: 10),

            _buildInfoCard(
              title: "Comunicação",
              icon: Icons.arrow_upward,
              color: Colors.blue,
              desc: "Permite olhar para cima e buscar dados dos pais, como Tema (Theme.of) e Navegação (Navigator.of).",
              isHighlight: true,
            ),
            
            const SizedBox(height: 10),
            
            _buildInfoCard(
              title: "Exemplo Prático",
              icon: Icons.smartphone,
              color: Colors.green,
              desc: "MediaQuery.of(context).size usa o contexto para descobrir o tamanho da tela onde o widget está.",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard({required String title, required IconData icon, required Color color, required String desc, bool isHighlight = false}) {
    return Card(
      elevation: isHighlight ? 4 : 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: isHighlight ? BorderSide(color: color, width: 2) : BorderSide.none,
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(15),
        leading: CircleAvatar(
          backgroundColor: color.withOpacity(0.1),
          child: Icon(icon, color: color),
        ),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, color: isHighlight ? color : Colors.black87),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(desc, style: const TextStyle(fontSize: 14)),
        ),
      ),
    );
  }
}