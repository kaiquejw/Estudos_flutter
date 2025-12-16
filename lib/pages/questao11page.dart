import 'package:flutter/material.dart';

class Questao11Page extends StatelessWidget {
  const Questao11Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q11: 4 Elementos Principais')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Text(
            "A Arquitetura do Flutter",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          _ElementoCard(
            numero: "1",
            titulo: "Motor Flutter (Engine)",
            desc: "Escrito em C++. Fornece renderização de baixo nível (Skia), acessibilidade e suporte a texto.",
            cor: Colors.redAccent,
          ),
          _ElementoCard(
            numero: "2",
            titulo: "Biblioteca Foundation",
            desc: "Escrita em Dart. Classes e funções básicas (API) usadas para construir os níveis superiores.",
            cor: Colors.orangeAccent,
          ),
          _ElementoCard(
            numero: "3",
            titulo: "Widgets",
            desc: "O bloco fundamental de construção da UI. Tudo no Flutter é um Widget.",
            cor: Colors.blueAccent,
          ),
          _ElementoCard(
            numero: "4",
            titulo: "Widgets de Design",
            desc: "Implementações específicas de estilos visuais: Material (Android) e Cupertino (iOS).",
            cor: Colors.green,
          ),
        ],
      ),
    );
  }
}

class _ElementoCard extends StatelessWidget {
  final String numero;
  final String titulo;
  final String desc;
  final Color cor;

  const _ElementoCard({required this.numero, required this.titulo, required this.desc, required this.cor});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: cor, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: cor,
          child: Text(numero, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        ),
        title: Text(titulo, style: TextStyle(fontWeight: FontWeight.bold, color: cor)),
        subtitle: Text(desc),
      ),
    );
  }
}