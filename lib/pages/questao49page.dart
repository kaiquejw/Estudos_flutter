import 'package:flutter/material.dart';

class Questao49Page extends StatelessWidget {
  const Questao49Page({super.key});

  @override
  Widget build(BuildContext context) {
    Runes input = Runes('\u{1f605}'); 
    var emoji = String.fromCharCodes(input);

    return Scaffold(
      appBar: AppBar(title: const Text('Q49: Runes e Unicode')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const Text(
              "O que são Runes?",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Strings no Dart são UTF-16. Mas alguns símbolos como Emojis precisam de 32 bits e 'Runes' é a forma de representar esses caracteres especiais.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),

            const SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildRuneCard("Código", "\\u{1f605}", Colors.grey),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(Icons.arrow_forward),
                ),
                _buildRuneCard("Resultado", emoji, Colors.purple),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRuneCard(String label, String value, Color color) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: color),
          ),
          child: Text(
            value,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: color),
          ),
        ),
        const SizedBox(height: 10),
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}