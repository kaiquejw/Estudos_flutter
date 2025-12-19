import 'package:flutter/material.dart';

class Questao55Page extends StatelessWidget {
  const Questao55Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q55: O que é Dart?')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const Text(
              "A Alma do Flutter",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Dart é a linguagem criada pelo Google em 2011, otimizada para construir interfaces de usuário rápidas em qualquer plataforma.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),

            const SizedBox(height: 40),

            Wrap(
              spacing: 10,
              runSpacing: 10,
              alignment: WrapAlignment.center,
              children: [
                _buildFeatureChip("Orientada a Objetos", Icons.data_object),
                _buildFeatureChip("Tipagem Segura", Icons.security),
                _buildFeatureChip("Sintaxe C-Style", Icons.text_fields),
                _buildFeatureChip("Null Safety", Icons.do_not_disturb_alt),
                _buildFeatureChip("Client-Optimized", Icons.devices),
              ],
            ),

            const SizedBox(height: 40),

            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.lightBlue[50],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.lightBlue),
              ),
              child: const Column(
                children: [
                  Text("Por que Dart?", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
                  SizedBox(height: 5),
                  Text(
                    "Ela é uma das poucas linguagens que consegue compilar tanto JIT (para desenvolvimento rápido) quanto AOT (para performance nativa).",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureChip(String label, IconData icon) {
    return Chip(
      avatar: Icon(icon, size: 18, color: Colors.white),
      label: Text(label, style: const TextStyle(color: Colors.white)),
      backgroundColor: Colors.lightBlue,
      padding: const EdgeInsets.all(8),
    );
  }
}