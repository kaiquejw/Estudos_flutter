import 'package:flutter/material.dart';

class Questao39Page extends StatelessWidget {
  const Questao39Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q39: Retorno Padrão')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const Text(
              "Tipo Dynamic",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            
            const SizedBox(height: 10),
            
            const Text(
              "Se você não especificar o tipo de retorno de uma função no Dart, ele assume o tipo 'dynamic' (pode ser qualquer coisa).",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),

            const SizedBox(height: 40),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF282C34),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("// Função sem tipo definido:", style: TextStyle(color: Colors.grey)),
                  const SizedBox(height: 5),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(fontFamily: 'monospace', fontSize: 16),
                      children: [
                        TextSpan(text: "minhaFuncao() {\n", style: TextStyle(color: Colors.yellowAccent)),
                        TextSpan(text: "  return ", style: TextStyle(color: Colors.cyanAccent)),
                        TextSpan(text: "\"Qualquer Coisa\";\n", style: TextStyle(color: Colors.greenAccent)),
                        TextSpan(text: "}", style: TextStyle(color: Colors.yellowAccent)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Divider(color: Colors.white24),
                  const Text(
                    "Tipo inferido: dynamic",
                    style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold, fontFamily: 'monospace'),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Card(
              color: Colors.orange[50],
              elevation: 0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12), side: BorderSide(color: Colors.orange.shade200)),
              child: const ListTile(
                leading: Icon(Icons.warning_amber_rounded, color: Colors.orange),
                title: Text("Dica"),
                subtitle: Text("Evite usar dynamic! Sempre defina o tipo (void, int, String) para evitar erros no futuro."),
              ),
            ),
          ],
        ),
      ),
    );
  }
}