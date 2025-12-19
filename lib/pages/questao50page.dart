import 'package:flutter/material.dart';

class Questao50Page extends StatelessWidget {
  const Questao50Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q50: É Gratuito?')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const Text(
              "Sim, é 100% Gratuito!",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.green),
            ),
            const Text(
              "O Flutter é um projeto Open Source criado pelo Google onde você pode usar, modificar e criar aplicativos comerciais sem pagar nada.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, color: Colors.black54),
            ),

            const SizedBox(height: 15),

            const Card(
              elevation: 4,
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.code, color: Colors.blue),
                      title: Text("Código Aberto"),
                      subtitle: Text("Qualquer um pode ver e contribuir."),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.business, color: Colors.blue),
                      title: Text("Uso Comercial"),
                      subtitle: Text("Permitido para empresas e startups."),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.g_mobiledata, color: Colors.blue),
                      title: Text("Mantido pelo Google"),
                      subtitle: Text("Segurança e suporte a longo prazo."),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}