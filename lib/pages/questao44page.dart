import 'package:flutter/material.dart';

class Questao44Page extends StatelessWidget {
  const Questao44Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q44: Teste de Widget')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const Text(
              "Testando Componentes",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "O 'Widget Test' permite criar um ambiente fake para renderizar um único widget e interagir com ele para garantir que funciona.",
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
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(fontFamily: 'monospace', fontSize: 14),
                      children: [
                        TextSpan(text: "testWidgets", style: TextStyle(color: Colors.yellowAccent)),
                        TextSpan(text: "('Meu Teste', (tester) ", style: TextStyle(color: Colors.white)),
                        TextSpan(text: "async", style: TextStyle(color: Colors.purpleAccent)),
                        TextSpan(text: " {\n", style: TextStyle(color: Colors.white)),
                        
                        TextSpan(text: "  // 1. Constrói o widget\n", style: TextStyle(color: Colors.grey)),
                        TextSpan(text: "  await tester.pumpWidget(MeuApp());\n\n", style: TextStyle(color: Colors.white)),

                        TextSpan(text: "  // 2. Procura um texto\n", style: TextStyle(color: Colors.grey)),
                        TextSpan(text: "  expect(find.text('Olá'), findsOneWidget);\n", style: TextStyle(color: Colors.cyanAccent)),
                        TextSpan(text: "});", style: TextStyle(color: Colors.white)),
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