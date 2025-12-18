import 'package:flutter/material.dart';

class Questao35Page extends StatefulWidget {
  const Questao35Page({super.key});

  @override
  State<Questao35Page> createState() => _Questao35PageState();
}

class _Questao35PageState extends State<Questao35Page> {
  bool _isLoading = false;
  String? _resultado;

  void _simularRequisicao() async {
    setState(() {
      _isLoading = true;
      _resultado = null;
    });

    await Future.delayed(const Duration(seconds: 2));

    setState(() {
      _isLoading = false;
      _resultado = '{"status": 200, "message": "Dados recebidos com sucesso!"}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q35: Pacote HTTP')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            
            const Icon(Icons.cloud_sync, size: 100, color: Colors.blue),
            
            const SizedBox(height: 20),

            const Text(
              "Conectando ao Mundo",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            
            const SizedBox(height: 10),
            
            const Text(
              "O Flutter precisa do pacote 'http' para conversar com servidores web, APIs e bancos de dados externos.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),

            const SizedBox(height: 40),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Column(
                children: [
                  if (_isLoading)
                    const Column(
                      children: [
                        CircularProgressIndicator(),
                        SizedBox(height: 10),
                        Text("Buscando dados no servidor..."),
                      ],
                    )
                  else if (_resultado != null)
                     Column(
                      children: [
                        const Icon(Icons.check_circle, color: Colors.green, size: 40),
                        const SizedBox(height: 10),
                        Text(
                          _resultado!,
                          style: const TextStyle(fontFamily: 'monospace', color: Colors.green),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )
                ],
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton.icon(
              onPressed: _isLoading ? null : _simularRequisicao,
              icon: const Icon(Icons.send),
              label: const Text("SIMULAR GET"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, foregroundColor: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}