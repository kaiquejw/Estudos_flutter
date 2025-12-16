import 'package:flutter/material.dart';

class Questao9Page extends StatelessWidget {
  const Questao9Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q9: Quem criou o Flutter?')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Desenvolvido por:", style: TextStyle(fontSize: 20)),
            const SizedBox(height: 30),
            
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Google_2015_logo.svg/2560px-Google_2015_logo.svg.png',
              width: 200, 
              
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return const CircularProgressIndicator();
              },
              
              // Tratamento de Erro (caso fique sem net)
              errorBuilder: (context, error, stackTrace) {
                return const Column(
                  children: [
                    Icon(Icons.wifi_off, size: 50, color: Colors.grey),
                    Text("Erro ao carregar imagem", style: TextStyle(color: Colors.grey)),
                  ],
                );
              },
            ),

            const SizedBox(height: 40),
            
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.blue.shade100),
              ),
              child: const Column(
                children: [
                  Icon(Icons.info_outline, color: Colors.blue),
                  SizedBox(height: 10),
                  Text(
                    "O Flutter é mantido pelo Google e é open-source.\n\nEle é usado internamente em apps gigantes como Google Pay, Google Ads e Google Classroom.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, height: 1.5),
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