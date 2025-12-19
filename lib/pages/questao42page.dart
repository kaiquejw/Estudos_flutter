import 'package:flutter/material.dart';

class Questao42Page extends StatelessWidget {
  const Questao42Page({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> itens = List.generate(50, (index) => "Item da Lista #${index + 1}");

    return Scaffold(
      appBar: AppBar(title: const Text('Q42: ListView')),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.blue[50],
            child: const Row(
              children: [
                Icon(Icons.info_outline, color: Colors.blue),
                SizedBox(width: 10),
                Expanded(child: Text("O ListView permite rolar quando o conteúdo é maior que a tela.")),
              ],
            ),
          ),
          
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: itens.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 2,
                  margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Text("${index + 1}", style: const TextStyle(color: Colors.white)),
                    ),
                    title: Text(itens[index]),
                    subtitle: const Text("Deslize para ver mais..."),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 14, color: Colors.grey),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}