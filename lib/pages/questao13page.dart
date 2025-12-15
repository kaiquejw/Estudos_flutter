import 'package:flutter/material.dart';

class Questao13Page extends StatelessWidget {
  const Questao13Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q13: Linguagem do Flutter')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.code, size: 80, color: Colors.teal),
              const SizedBox(height: 20),
              const Text(
                "Dart",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.teal),
              ),
              const SizedBox(height: 20),
              const Text(
                "O Flutter é escrito em Dart.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
                child: const Column(
                  children: [
                    Text("Curiosidades:", style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text("• Compilação AOT para produção (rápido)."),
                    Text("• Compilação JIT para desenvolvimento (Hot Reload)."),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}