import 'package:flutter/material.dart';

class Questao15Page extends StatelessWidget {
  const Questao15Page({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> editores = [
      {'nome': 'Android Studio', 'icon': Icons.android, 'cor': Colors.green},
      {'nome': 'IntelliJ IDEA', 'icon': Icons.code, 'cor': Colors.blue},
      {'nome': 'Visual Studio Code', 'icon': Icons.terminal, 'cor': Colors.blueAccent}, 
      {'nome': 'Emacs', 'icon': Icons.edit_note, 'cor': Colors.purple},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Q15: Melhores Editores')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: editores.length,
        itemBuilder: (context, index) {
          final ide = editores[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: ide['cor'].withOpacity(0.2),
                child: Icon(ide['icon'], color: ide['cor']),
              ),
              title: Text(ide['nome'], style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text("Ambiente de Desenvolvimento (IDE)"),
            ),
          );
        },
      ),
    );
  }
}