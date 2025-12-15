import 'package:flutter/material.dart';

class Questao18Page extends StatelessWidget {
  const Questao18Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q18: Comando Release')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            
            // --- ÍCONE TEMÁTICO ---
            // Foguete = Lançamento/Velocidade
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.redAccent.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.rocket_launch, size: 80, color: Colors.redAccent),
            ),
            
            const SizedBox(height: 20),
            
            const Text(
              "Modo de Lançamento",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Para obter o desempenho máximo e preparar o app para as lojas, usamos o comando:",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),

            const SizedBox(height: 30),

            // --- TERMINAL VISUALMENTE MELHORADO ---
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF1E1E1E), // Cor fundo VS Code
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [BoxShadow(color: Colors.black45, blurRadius: 10, offset: Offset(0, 5))],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Barra de Título do Terminal (Estilo MacOS/Ubuntu)
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: const BoxDecoration(
                      color: Color(0xFF333333),
                      borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                    ),
                    child: Row(
                      children: [
                        _BolinhaTerminal(Colors.red),
                        const SizedBox(width: 8),
                        _BolinhaTerminal(Colors.amber),
                        const SizedBox(width: 8),
                        _BolinhaTerminal(Colors.green),
                        const SizedBox(width: 10),
                        const Text("terminal — bash", style: TextStyle(color: Colors.grey, fontSize: 12)),
                      ],
                    ),
                  ),
                  
                  // O Comando em si
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: const [
                        Text("\$", style: TextStyle(color: Colors.greenAccent, fontWeight: FontWeight.bold, fontSize: 18, fontFamily: 'monospace')),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            "flutter run --release",
                            style: TextStyle(color: Colors.white, fontSize: 18, fontFamily: 'monospace', fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // --- NOTA SOBRE WEB (Card Informativo) ---
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.amber[50],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.amber.shade200),
              ),
              child: Row(
                children: [
                  const Icon(Icons.lightbulb, color: Colors.amber, size: 30),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Nota sobre Web:", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.brown)),
                        SizedBox(height: 5),
                        Text(
                          "Na Web, esse comando usa o compilador 'dart2js' para otimizar o código JavaScript.",
                          style: TextStyle(color: Colors.brown),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Widget auxiliar para as bolinhas da janela do terminal
class _BolinhaTerminal extends StatelessWidget {
  final Color cor;
  const _BolinhaTerminal(this.cor);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(color: cor, shape: BoxShape.circle),
    );
  }
}