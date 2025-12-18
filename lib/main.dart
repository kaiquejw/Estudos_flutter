import 'package:flutter/material.dart';
import 'pages/questao1page.dart';
import 'pages/questao2page.dart';
import 'pages/questao3page.dart';
import 'pages/questao4page.dart';
import 'pages/questao5page.dart';
import 'pages/questao6page.dart';
import 'pages/questao7page.dart';
import 'pages/questao8page.dart';
import 'pages/questao9page.dart';
import 'pages/questao10page.dart';
import 'pages/questao11page.dart';
import 'pages/questao12page.dart';
import 'pages/questao13page.dart';
import 'pages/questao14page.dart';
import 'pages/questao15page.dart';
import 'pages/questao16page.dart';
import 'pages/questao17page.dart';
import 'pages/questao18page.dart';
import 'pages/questao19page.dart';
import 'pages/questao20page.dart';
import 'pages/questao21page.dart';
import 'pages/questao22page.dart';
import 'pages/questao23page.dart';
import 'pages/questao24page.dart';
import 'pages/questao25page.dart';
import 'pages/questao26page.dart';
import 'pages/questao27page.dart';
import 'pages/questao28page.dart';
import 'pages/questao30page.dart';

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
      'titulo': 'Por que usar Flutter?',
      'nivel': 'Teórico',
      'pagina': Questao1Page(),
    },
    {
      'id': 2,
      'titulo': 'Packages vs Plugins',
      'nivel': 'Teórico',
      'pagina': Questao2Page(),
    },
    {
      'id': 3,
      'titulo': 'Limitações do Flutter',
      'nivel': 'Teórico',
      'pagina': Questao3Page(),
    },
    {
      'id': 4,
      'titulo': 'Por que o 1º build demora?',
      'nivel': 'Teórico',
      'pagina': Questao4Page(),
    },
    {
      'id': 5,
      'titulo': 'O que são chaves e como você as usa?', 
      'nivel': 'Prático',
      'pagina': Questao5Page(),
    },
    {
      'id': 6,
      'titulo': 'Quais são os diferentes tipos de córregos em Dart?', 
      'nivel': 'Prático',
      'pagina': Questao6Page(),
    },
    {
      'id': 7,
      'titulo': 'O que é o arquivo pubspec.yaml?', 
      'nivel': 'Teórico',
      'pagina': Questao7Page(),
    },
    {
      'id': 8,
      'titulo': 'O que é Flutter?', 
      'nivel': 'Teórico',
      'pagina': Questao8Page(),
    },

    {
      'id': 9,
      'titulo': 'Qual empresa desenvolveu o Flutter?',
      'nivel': 'Teórico',
      'pagina': Questao9Page(),
    },
    {
      'id': 10,
      'titulo': 'Primeira versão no Android?',
      'nivel': 'Teórico', 
      'pagina': Questao10Page(),
    },
    {
      'id': 11,
      'titulo': 'Quatro elementos principais',
      'nivel': 'Teórico', 
      'pagina': Questao11Page(),
    },
    {
      'id': 12,
      'titulo': 'Quando foi lançado?',
      'nivel': 'Teórico',
      'pagina': Questao12Page(),
    },
    {
      'id': 13,
      'titulo': 'Em que linguagem foi escrito?',
      'nivel': 'Teórico',
      'pagina': Questao13Page(),
    },
    {
      'id': 14,
      'titulo': 'O que significa a sigla SDK?',
      'nivel': 'Teórico',
      'pagina': Questao14Page(),
    },
    {
      'id': 15,
      'titulo': 'Melhores editores para Flutter',
      'nivel': 'Teórico',
      'pagina': Questao15Page(),
    },
    {
      'id': 16,
      'titulo': 'Qual operador avalia dois valores?',
      'nivel': 'Prático', 
      'pagina': Questao16Page(),
    },
    {
      'id': 17,
      'titulo': 'Quantos tipos de Widgets existem?',
      'nivel': 'Prático',
      'pagina': Questao17Page(),
    },
    {
      'id': 18,
      'titulo': 'Qual comando para modo Release?',
      'nivel': 'Teórico',
      'pagina': Questao18Page(),
    },
    {
      'id': 19,
      'titulo': 'Quais os modos de compilação?',
      'nivel': 'Teórico',
      'pagina': Questao19Page(),
    },
    {
      'id': 20,
      'titulo': 'Widget Caixa com tamanhos (SizedBox)',
      'nivel': 'Prático',
      'pagina': Questao20Page(),
    },
    {
      'id': 21,
      'titulo': 'Animação do Mundo Real (Física)',
      'nivel': 'Prático',
      'pagina': Questao21Page(),
    },
        {
      'id': 22,
      'titulo': 'Apps populares em Flutter',
      'nivel': 'Teórico',
      'pagina': Questao22Page(),
    },
    {
      'id': 23,
      'titulo': 'Qual pasta é usada para escrever aplicativos Android no Flutter?',
      'nivel': 'Teórico',
      'pagina': Questao23Page(),
    },
    {
      'id': 24,
      'titulo': 'Função Await (Async)',
      'nivel': 'Prático',
      'pagina': Questao24Page(),
    },
    {
      'id': 25,
      'titulo': 'Compilar e Atualizar',
      'nivel': 'Teórico',
      'pagina': Questao25Page(),
    },
    {
      'id': 26,
      'titulo': 'Função main()',
      'nivel': 'Teórico',
      'pagina': Questao26Page(),
    },
    {
      'id': 27,
      'titulo': 'AnimationController',
      'nivel': 'Prático',
      'pagina': Questao27Page(),
    },
    {
      'id': 28,
      'titulo': 'Testar Widget',
      'nivel': 'Teórico',
      'pagina': Questao28Page(),
    },
    {
      'id': 30,
      'titulo': 'Testar Widget',
      'nivel': 'Teórico',
      'pagina': Questao30Page(),
    },
   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu de Questões (1-30)')),
      body: ListView.builder(
        itemCount: _questoes.length,
        itemBuilder: (context, index) {
          final q = _questoes[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: q['nivel'] == 'Teórico' ? Colors.purple[100] : Colors.blue[100],
                child: Text("${q['id']}"),
              ),
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