import 'package:flutter/material.dart';

class Questao28Page extends StatelessWidget {
  const Questao28Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q28: Testar Widget')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 40),

            const Icon(Icons.fact_check_rounded, size: 100, color: Colors.green),
            
            const SizedBox(height: 20),

            const Text(
              "Teste Sem Emulador",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            
            const SizedBox(height: 10),
            
            const Text(
              "O 'Widget Testing' permite verificar se botões e textos funcionam sem precisar abrir o aplicativo inteiro no simulador.",
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
                  SizedBox(height: 5),
                  Text(
                    "flutter test",
                    style: TextStyle(
                      color: Colors.greenAccent, 
                      fontFamily: 'monospace', 
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                    ),
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
                subtitle: Text("É muito mais rápido que abrir o app real. Você garante que o botão funciona em milissegundos."),
              ),
            ),
          ],
        ),
      ),
    );
  }
}