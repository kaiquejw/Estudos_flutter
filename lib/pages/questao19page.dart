import 'package:flutter/material.dart';

class Questao19Page extends StatelessWidget {
  const Questao19Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q19: Modos de Compilação')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          _ModoCard(
            titulo: "1. Debug (Depurar)",
            comando: "flutter run",
            desc: "Usado durante o desenvolvimento. Possui Hot Reload e ferramentas de debug ativas. É mais lento, mas facilita a programação.",
            cor: Colors.green,
            icone: Icons.bug_report,
          ),
          _ModoCard(
            titulo: "2. Profile (Perfil)",
            comando: "flutter run --profile",
            desc: "Mantém algumas ferramentas de análise para medir performance, mas roda com velocidade próxima da real. Usado para caçar gargalos.",
            cor: Colors.orange,
            icone: Icons.speed,
          ),
          _ModoCard(
            titulo: "3. Release (Lançamento)",
            comando: "flutter run --release",
            desc: "Código totalmente otimizado e minificado. Sem ferramentas de debug. É o que vai para a Google Play/App Store.",
            cor: Colors.redAccent,
            icone: Icons.rocket_launch,
          ),
        ],
      ),
    );
  }
}

class _ModoCard extends StatelessWidget {
  final String titulo;
  final String comando;
  final String desc;
  final Color cor;
  final IconData icone;

  const _ModoCard({
    required this.titulo,
    required this.comando,
    required this.desc,
    required this.cor,
    required this.icone,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: cor,
          child: Icon(icone, color: Colors.white),
        ),
        title: Text(titulo, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              color: Colors.black12,
              child: Text(comando, style: const TextStyle(fontFamily: 'monospace', fontSize: 12)),
            ),
            const SizedBox(height: 5),
            Text(desc),
          ],
        ),
      ),
    );
  }
}