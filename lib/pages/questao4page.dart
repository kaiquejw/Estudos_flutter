import 'package:flutter/material.dart';

class Questao4Page extends StatelessWidget {
  const Questao4Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q4: Primeiro Build')),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 20),
              Text(
                "Por que demora?",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "O primeiro build precisa configurar o Gradle (Android) ou Xcode (iOS), baixar dependências e compilar todo o código nativo. Os próximos são mais rápidos",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}