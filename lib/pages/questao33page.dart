import 'package:flutter/material.dart';

class Questao33Page extends StatelessWidget {
  const Questao33Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q33: Importar Pacotes')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "Gerenciador de Pacotes",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            
            const SizedBox(height: 10),
            
            const Text(
              "Para adicionar bibliotecas externas (plugins) ao projeto, usamos o arquivo pubspec.yaml.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),

            const SizedBox(height: 30),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF282C34), 
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(0, 5))],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("pubspec.yaml", style: TextStyle(color: Colors.white54, fontSize: 12, fontStyle: FontStyle.italic)),
                  const Divider(color: Colors.white24),
                  const SizedBox(height: 5),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(fontFamily: 'monospace', fontSize: 16),
                      children: [
                        TextSpan(text: "dependencies:\n", style: TextStyle(color: Colors.redAccent)),
                        TextSpan(text: "  flutter:\n", style: TextStyle(color: Colors.orangeAccent)),
                        TextSpan(text: "    sdk: flutter\n\n", style: TextStyle(color: Colors.greenAccent)),
                        TextSpan(text: "  # Pacote adicionado:\n", style: TextStyle(color: Colors.grey)),
                        TextSpan(text: "  http: ^1.1.0", style: TextStyle(color: Colors.cyanAccent, fontWeight: FontWeight.bold)),
                      ],
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
                leading: Icon(Icons.cloud_download, color: Colors.blue),
                title: Text("Dica"),
                subtitle: Text("Após editar este arquivo, rode 'flutter pub get' para baixar as dependências."),
              ),
            ),
          ],
        ),
      ),
    );
  }
}