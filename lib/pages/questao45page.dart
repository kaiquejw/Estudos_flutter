import 'package:flutter/material.dart';

class Questao45Page extends StatelessWidget {
  const Questao45Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q45: Versão do Flutter')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const Text(
              "Evolução Constante",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "O Flutter evolui rápido! A versão citada na pergunta 3.7 trouxe o Material Design 3. Caso queira saber a sua versão atual, use o comando abaixo.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),

            const SizedBox(height: 20),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(
                color: const Color.fromARGB(221, 24, 70, 221),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.blueAccent),
              ),
              child: const Center(
                child: Text(
                  "flutter --version",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'monospace',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Card(
              elevation: 0,
              color: Colors.blue[50],
              child: const ListTile(
                leading: Icon(Icons.info, color: Colors.blue),
                title: Text("Dica"),
                subtitle: Text("Use 'flutter upgrade' para garantir que você tem os recursos mais novos."),
              ),
            )
          ],
        ),
      ),
    );
  }
}