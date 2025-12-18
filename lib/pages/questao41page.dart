import 'package:flutter/material.dart';

class Questao41Page extends StatelessWidget {
  const Questao41Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q41: Mecanismo de Layout')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const Text(
              "Tudo é Widget!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            
            const SizedBox(height: 10),
            
            const Text(
              "O núcleo do Flutter são os Widgets. Botões são widgets, textos são widgets, layouts (Row, Column) são widgets e até o próprio App é um widget.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),

            const SizedBox(height: 40),

            const Text("Árvore de Widgets:", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Column(
                children: [
                  Icon(Icons.phone_android, color: Colors.blueGrey),
                  Icon(Icons.arrow_downward, size: 16, color: Colors.grey),
                  Chip(label: Text("Scaffold")),
                  Icon(Icons.arrow_downward, size: 16, color: Colors.grey),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Chip(label: Text("AppBar")),
                      SizedBox(width: 10),
                      Chip(label: Text("Body")),
                    ],
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