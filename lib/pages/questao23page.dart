import 'package:flutter/material.dart';

class Questao23Page extends StatelessWidget {
  const Questao23Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q23: Pasta Android')),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.android, size: 100, color: Colors.green),
              
              const SizedBox(height: 20),

              const Text(
                "Código Nativo",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              
              const SizedBox(height: 10),
              
              const Text(
                "Esta pasta guarda todos os arquivos que o sistema Android precisa para rodar o seu aplicativo (Gradle, AndroidManifest, ícones do sistema, etc).",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),

              const SizedBox(height: 30),

              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: const ListTile(
                  leading: Icon(Icons.build, color: Colors.orange, size: 30),
                  title: Text("Preciso configurar manualmente?"),
                  subtitle: Text("Raramente! O Flutter gerencia praticamente tudo. Você só entra aqui para configurações muito específicas."),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}