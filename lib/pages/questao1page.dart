import 'package:flutter/material.dart';

class Questao1Page extends StatelessWidget {
  const Questao1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q1: Por que Flutter?')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ListTile(
            leading: Icon(Icons.phone_android, color: Colors.blue),
            title: Text("Cross-Platform"),
            subtitle: Text("Mesmo código para Android e iOS."),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.flash_on, color: Colors.amber),
            title: Text("Hot Reload"),
            subtitle: Text("Veja as mudanças instantaneamente."),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.speed, color: Colors.red),
            title: Text("Alta Performance"),
            subtitle: Text("Compila para código nativo (ARM)."),
          ),
        ],
      ),
    );
  }
}