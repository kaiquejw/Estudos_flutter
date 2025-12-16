import 'package:flutter/material.dart';

class Questao8Page extends StatelessWidget {
  const Questao8Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q8: O que é Flutter?')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const FlutterLogo(size: 100),
            const SizedBox(height: 20),
            const Text(
              "Flutter",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.blue.shade200),
              ),
              child: const Text(
                "\"Flutter é um kit de desenvolvimento de software (SDK) de código aberto para interfaces de usuário, usado para criar aplicativos multiplataforma a partir de uma única base de código.\"",
                style: TextStyle(fontSize: 16, height: 1.5, fontStyle: FontStyle.italic),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            const ListTile(
              leading: Icon(Icons.devices),
              title: Text("Multiplataforma"),
              subtitle: Text("Compilado nativamente para iOS e Android."),
            ),
            const ListTile(
              leading: Icon(Icons.code),
              title: Text("Única Base de Código"),
              subtitle: Text("Escreva uma vez, rode em qualquer lugar."),
            ),
          ],
        ),
      ),
    );
  }
}