import 'package:flutter/material.dart';
import 'pages/questao1page.dart';
import 'pages/questao2page.dart';
import 'pages/questao3page.dart';
import 'pages/questao4page.dart';

void main() {
  runApp(const MeuAppEstudos());
}

class MeuAppEstudos extends StatelessWidget {
  const MeuAppEstudos({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Estudos Flutter',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const MenuPrincipal(),
    );
  }
}

class MenuPrincipal extends StatelessWidget {
  const MenuPrincipal({super.key});


  final List<Map<String, dynamic>> _questoes = const [
    {
      'id': 1,
      'titulo': 'Stateless vs Stateful',
      'nivel': 'Iniciante',
      'pagina': Q01StatelessStatefulPage(),
    },
    {
      'id': 2,
      'titulo': 'Ciclo de Vida (Lifecycle)',
      'nivel': 'Iniciante',
      'pagina': Q02LifecyclePage(),
    },
    {
      'id': 3,
      'titulo': 'Container & Decorações',
      'nivel': 'Iniciante',
      'pagina': Q03ContainerPage(),
    },
    {
      'id': 4,
      'titulo': 'Row vs Column',
      'nivel': 'Iniciante',
      'pagina': Q04RowColumnPage(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu de Questões Práticas')),
      body: ListView.builder(
        itemCount: _questoes.length,
        itemBuilder: (context, index) {
          final q = _questoes[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              leading: CircleAvatar(child: Text("${q['id']}")),
              title: Text(q['titulo']),
              subtitle: Text(q['nivel']),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => q['pagina']),
                );
              },
            ),
          );
        },
      ),
    );
  }
}