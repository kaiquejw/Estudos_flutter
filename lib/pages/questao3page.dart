import 'package:flutter/material.dart';

class Questao3Page extends StatelessWidget {
  const Questao3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q3: Limitações')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Card(
            child: ListTile(
              leading: Icon(Icons.sd_storage, color: Colors.red),
              title: Text("Tamanho do App"),
              subtitle: Text("Apps Flutter são maiores que nativos pois carregam a Engine junto."),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.games, color: Colors.purple),
              title: Text("Jogos 3D"),
              subtitle: Text("Não é ideal para jogos 3D."),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.update, color: Colors.grey),
              title: Text("Features Novas"),
              subtitle: Text("Demora um pouco para recursos muito novos do iOS/Android chegarem."),
            ),
          ),
        ],
      ),
    );
  }
}