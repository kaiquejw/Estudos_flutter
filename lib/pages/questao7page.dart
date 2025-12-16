import 'package:flutter/material.dart';

class Questao7Page extends StatelessWidget {
  const Questao7Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q7: Arquivo pubspec.yaml')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Icon(Icons.snippet_folder, size: 80, color: Colors.indigo),
          const SizedBox(height: 10),
          const Text(
            "Configuração do Projeto",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          const Text(
            "Conforme sua referência, este arquivo contém:",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 10),
          _ItemPubspec("Dependências", "Define pacotes e suas versões (ex: http: ^1.0.0). Garante que a versão seja a mesma na próxima vez que criar o projeto."),
          _ItemPubspec("Metadados", "Nome do projeto, descrição, versão e autor."),
          _ItemPubspec("Assets", "Configuração de imagens, fontes e arquivos estáticos."),
          _ItemPubspec("Formato YAML", "Linguagem de marcação legível por humanos."),
        ],
      ),
    );
  }
}

class _ItemPubspec extends StatelessWidget {
  final String titulo;
  final String texto;
  const _ItemPubspec(this.titulo, this.texto);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: const Icon(Icons.check_circle_outline, color: Colors.green),
        title: Text(titulo, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(texto),
      ),
    );
  }
}