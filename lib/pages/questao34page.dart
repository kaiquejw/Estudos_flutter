import 'package:flutter/material.dart';

class Questao34Page extends StatelessWidget {
  const Questao34Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q34: Navigator.push')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            
            const Icon(Icons.layers, size: 100, color: Colors.deepPurple),
            
            const SizedBox(height: 20),

            const Text(
              "Navigator.push",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            
            const SizedBox(height: 10),
            
            const Text(
              "O método push() coloca uma nova rota (tela) no topo da pilha de navegação.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),

            const SizedBox(height: 40),

            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              icon: const Icon(Icons.arrow_forward),
              label: const Text("TESTAR PUSH AGORA"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const _TelaSecundariaExemplo()),
                );
              },
            ),

            const SizedBox(height: 30),

            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.deepPurple[50],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.deepPurple.shade100),
              ),
              child: const Row(
                children: [
                  Icon(Icons.code, color: Colors.deepPurple),
                  SizedBox(width: 15),
                  Expanded(
                    child: Text(
                      "Navigator.push(context, route);\nIsso mantém a tela anterior salva 'embaixo' da nova, permitindo voltar.",
                      style: TextStyle(fontFamily: 'monospace', fontSize: 13),
                    ),
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

class _TelaSecundariaExemplo extends StatelessWidget {
  const _TelaSecundariaExemplo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: const Text("Nova Rota"),
        backgroundColor: Colors.deepPurpleAccent, 
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.check_circle, color: Colors.white, size: 80),
            const SizedBox(height: 20),
            const Text(
              "Você está na nova tela!",
              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text("Voltar (Pop)"),
            )
          ],
        ),
      ),
    );
  }
}