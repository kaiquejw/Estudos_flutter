import 'package:flutter/material.dart';

class Questao22Page extends StatelessWidget {
  const Questao22Page({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> aplicativos = [
      {
        'nome': 'Hamilton', 
        'descricao': 'App oficial do musical da Broadway', 
        'icon': Icons.music_note, 
        'cor': Colors.blue
      },
      {
        'nome': 'KlasterMe', 
        'descricao': 'Rede social de criação de conteúdo', 
        'icon': Icons.share, 
        'cor': Colors.yellow[800] 
      },
      {
        'nome': 'Google Ads', 
        'descricao': 'Gerenciamento de campanhas de anúncios', 
        'icon': Icons.monetization_on, 
        'cor': Colors.cyan
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Q22: Apps populares em Flutter')),
            body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: aplicativos.length,
        itemBuilder: (context, index) {
          
          final app = aplicativos[index]; 

          return Card(
            elevation: 4, 
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: app['cor'].withOpacity(0.2),
                child: Icon(app['icon'], color: app['cor']),
              ),
              
              title: Text(
                app['nome'], 
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(app['descricao']),
            ),
          );
        },
      ),
    );
  }
}