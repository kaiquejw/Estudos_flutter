import 'package:flutter/material.dart';

class Questao2Page extends StatelessWidget {
  const Questao2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q2: Packages vs Plugins')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.blue[50],
              child: const Column(
                children: [
                  Icon(Icons.code, size: 40, color: Colors.blue),
                  Text("Packages", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("São escritos apenas em Dart. Ex: http, path.", textAlign: TextAlign.center),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Icon(Icons.compare_arrows),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.orange[50],
              child: const Column(
                children: [
                  Icon(Icons.settings_cell, size: 40, color: Colors.orange),
                  Text("Plugins", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("Usam código nativo (Java/Swift) para falar com o celular. Ex: Camera, GPS.", textAlign: TextAlign.center),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}