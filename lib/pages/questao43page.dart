import 'package:flutter/material.dart';

class Questao43Page extends StatelessWidget {
  const Questao43Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q43: O que é Layout?')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const Text(
              "A Regra",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Layout é como os widgets são organizados na tela: tamanho, posição e limites. O pai impõe limites, o filho escolhe o tamanho, e o pai decide a posição",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),

            const SizedBox(height: 40),
            Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.indigo[100],
                border: Border.all(color: Colors.indigo, width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  const Positioned(
                    top: 10,
                    child: Text("PAI (Define Restrições)", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.indigo)),
                  ),
                  
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 10)],
                    ),
                    child: const Center(
                      child: Text(
                        "FILHO\n(Define o seu Tamanho)",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
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