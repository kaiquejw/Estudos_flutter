import 'package:flutter/material.dart';

class Questao26Page extends StatelessWidget {
  const Questao26Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q26: Função main()')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, 
          children: [
            const Text(
              "O Ponto de Partida",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            
            const SizedBox(height: 10),
            
            const Text(
              "Sem a função main(), o Flutter não sabe por onde começar. Ela é quem inicia a aplicação.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),

            const SizedBox(height: 40), 

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "void main() {",
                    style: TextStyle(color: Colors.orangeAccent, fontFamily: 'monospace', fontSize: 18),
                  ),
                  Text(
                    "  runApp(MeuApp());",
                    style: TextStyle(color: Colors.white, fontFamily: 'monospace', fontSize: 18),
                  ),
                  Text(
                    "}",
                    style: TextStyle(color: Colors.orangeAccent, fontFamily: 'monospace', fontSize: 18),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: const ListTile(
                leading: Icon(Icons.bolt, color: Colors.orange, size: 30),
                title: Text("Resumo"),
                subtitle: Text("Ela é a primeira função a ser executada e chama o 'runApp', que desenha a tela inicial."),
              ),
            ),
          ],
        ),
      ),
    );
  }
}