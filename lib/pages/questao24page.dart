import 'package:flutter/material.dart';

class Questao24Page extends StatefulWidget {
  const Questao24Page({super.key});

  @override
  State<Questao24Page> createState() => _Questao24PageState();
}

class _Questao24PageState extends State<Questao24Page> {
  String _mensagem = "Toque no botão para iniciar";
  bool _carregando = false;

  Future<void> _fazerDownload() async {
    setState(() {
      _carregando = true;
      _mensagem = "Baixando dados... (3s)";
    });

    await Future.delayed(const Duration(seconds: 3));

    setState(() {
      _carregando = false;
      _mensagem = "Download concluído com sucesso!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q24: Função Await')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.blue.shade100),
              ),
              child: const Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.info_outline, color: Colors.blue),
                      SizedBox(width: 10),
                      Text("O que acontece aqui?", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Ao clicar no botão, usamos o 'await' para simular uma espera de 3 segundos. Sem ele, o app tentaria mostrar o resultado antes dos dados chegarem.",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            
            const Spacer(),

            if (_carregando)
              const CircularProgressIndicator()
            else
              const Icon(Icons.cloud_download, size: 80, color: Colors.grey),
            
            const SizedBox(height: 20),
            
            Text(
              _mensagem,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18, 
                fontWeight: FontWeight.bold,
                color: _carregando ? Colors.blue : Colors.black87
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity, 
              child: ElevatedButton(
                onPressed: _carregando ? null : _fazerDownload,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                child: const Text("Testar o Await"),
              ),
            ),

            const Spacer(), 
          ],
        ),
      ),
    );
  }
}