import 'package:flutter/material.dart';

class Questao36Page extends StatelessWidget {
  const Questao36Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q36: Profile Mode')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "Análise de Performance",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            
            const SizedBox(height: 10),
            
            const Text(
              "O Profile Mode é um meio-termo, ele é rápido como a versão final, mas mantém ferramentas ativas para você descobrir o que está deixando o app lento.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),

            const SizedBox(height: 40),

            _buildModeCard(
              title: "Debug Mode",
              icon: Icons.bug_report,
              color: Colors.grey,
              desc: "Lento e cheio de verificações de erro, sendo bom para desenvolver.",
            ),
            const SizedBox(height: 10),
            _buildModeCard(
              title: "Profile Mode",
              icon: Icons.troubleshoot,
              color: const Color.fromARGB(255, 196, 73, 226),
              desc: "Rápido. Mantém rastreamento de performance muito usado para otimização.",
              isHighlight: true, 
            ),
            const SizedBox(height: 10),
            _buildModeCard(
              title: "Release Mode",
              icon: Icons.rocket_launch,
              color: Colors.green,
              desc: "Velocidade Máxima. Código otimizado para versão de publicação.",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildModeCard({required String title, required IconData icon, required Color color, required String desc, bool isHighlight = false}) {
    return Card(
      elevation: isHighlight ? 4 : 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: isHighlight ? BorderSide(color: color, width: 2) : BorderSide.none,
      ),
      child: ListTile(
        leading: CircleAvatar(backgroundColor: color.withOpacity(0.2), child: Icon(icon, color: color)),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold, color: isHighlight ? color : Colors.black)),
        subtitle: Text(desc),
      ),
    );
  }
}