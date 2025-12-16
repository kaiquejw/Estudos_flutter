import 'package:flutter/material.dart';

class Questao10Page extends StatelessWidget {
  const Questao10Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Q10: Primeira Versão (Android)'),
        backgroundColor: Colors.lightBlue[50],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // --- CABEÇALHO COM ÍCONE DO ANDROID ---
            const SizedBox(height: 20),
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Android_robot.svg/872px-Android_robot.svg.png',
                  height: 150,
                  loadingBuilder: (c, child, progress) => progress == null ? child : const CircularProgressIndicator(),
                  errorBuilder: (c, e, s) => const Icon(Icons.android, size: 100, color: Colors.green),
                ),
                // Pequeno badge "Sky"
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 4)],
                  ),
                  child: const Text(
                    "Projeto Sky",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            const Text(
              "A Origem no Android",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),
            ),
            const SizedBox(height: 10),
            
            // --- CARTÃO DE HISTÓRIA ---
            Card(
              elevation: 4,
              shadowColor: Colors.blue.withOpacity(0.3),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.event, color: Colors.blue),
                        SizedBox(width: 10),
                        Text("Dart Developer Summit 2015", style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                    const Divider(height: 20),
                    Text(
                      "A primeira versão do Flutter chamava-se 'Sky'. Ela foi projetada especificamente para rodar no Android e demonstrar o poder da linguagem Dart no mobile.",
                      style: TextStyle(fontSize: 16, color: Colors.grey[800], height: 1.5),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // --- DESTAQUE 120 FPS ---
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [Colors.deepOrange, Colors.orangeAccent]),
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [BoxShadow(color: Colors.orangeAccent, blurRadius: 10, offset: Offset(0, 4))],
              ),
              child: Column(
                children: [
                  const Icon(Icons.speed, color: Colors.white, size: 40),
                  const SizedBox(height: 10),
                  const Text(
                    "O Objetivo Ambicioso",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "Renderizar consistentemente a\n120 FPS (Quadros por Segundo)",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(color: Colors.white24, borderRadius: BorderRadius.circular(10)),
                    child: const Text("Mais rápido que os 60Hz padrões!", style: TextStyle(color: Colors.white, fontSize: 12)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}