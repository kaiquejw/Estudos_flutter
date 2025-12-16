import 'package:flutter/material.dart';

class Questao14Page extends StatelessWidget {
  const Questao14Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q14: O que é SDK?')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Icon(Icons.handyman, size: 80, color: Colors.orange),
            const SizedBox(height: 20),
            const Text(
              "Software Development Kit",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              "(Kit de Desenvolvimento de Software)",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 30),
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: const [
                    Text(
                      "Definição da sua lista:",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "É um conjunto de ferramentas e programas fornecidos por fabricantes (hardware/software) que desenvolvedores usam para criar aplicativos para plataformas específicas.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const ListTile(
              leading: Icon(Icons.check, color: Colors.green),
              title: Text("Inclui APIs"),
              subtitle: Text("Interfaces para conversar com o sistema."),
            ),
            const ListTile(
              leading: Icon(Icons.check, color: Colors.green),
              title: Text("Inclui Documentação"),
              subtitle: Text("Manuais de como usar."),
            ),
            const ListTile(
              leading: Icon(Icons.check, color: Colors.green),
              title: Text("Inclui Ferramentas"),
              subtitle: Text("Compiladores, debuggers, etc."),
            ),
          ],
        ),
      ),
    );
  }
}