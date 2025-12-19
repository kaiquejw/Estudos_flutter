import 'package:flutter/material.dart';

class Questao40Page extends StatelessWidget {
  const Questao40Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q40: Construtores')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [

            const Text(
              "Criando Objetos",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            
            const SizedBox(height: 10),
            
            const Text(
              "No Dart/Flutter, o construtor é o método especial responsável por criar uma instância da classe. Ele sempre tem o MESMO NOME da classe.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),

            const SizedBox(height: 40),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF282C34),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("// Definindo a classe", style: TextStyle(color: Colors.grey)),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(fontFamily: 'monospace', fontSize: 16),
                      children: [
                        TextSpan(text: "class ", style: TextStyle(color: Colors.purpleAccent)),
                        TextSpan(text: "MeuWidget ", style: TextStyle(color: Colors.yellowAccent)),
                        TextSpan(text: "{\n", style: TextStyle(color: Colors.white)),
                        
                        TextSpan(text: "  // O Construtor:\n", style: TextStyle(color: Colors.grey)),
                        TextSpan(text: "  const ", style: TextStyle(color: Colors.purpleAccent)),
                        TextSpan(text: "MeuWidget", style: TextStyle(color: Colors.yellowAccent, fontWeight: FontWeight.bold)),
                        TextSpan(text: "({super.key});\n", style: TextStyle(color: Colors.white)),
                        TextSpan(text: "}", style: TextStyle(color: Colors.white)),
                      ],
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