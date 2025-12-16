import 'package:flutter/material.dart';
import 'dart:async';

class Questao6Page extends StatefulWidget {
  const Questao6Page({super.key});

  @override
  State<Questao6Page> createState() => _Questao6PageState();
}

class _Questao6PageState extends State<Questao6Page> {
  StreamController<double>? _downloadController;
  double _progresso = 0.0;
  bool _baixando = false;

  void _iniciarDownloadSimulado() {

    _downloadController = StreamController<double>();
    
    setState(() {
      _baixando = true;
      _progresso = 0.0;
    });


    _downloadController!.stream.listen(
      (dados) {
        setState(() => _progresso = dados);
      },
      onDone: () {
        setState(() => _baixando = false);
        _downloadController?.close(); 
      },
      onError: (erro) {
        print("Erro: $erro");
      }
    );

    _enviarDadosFalsos();
  }

  Future<void> _enviarDadosFalsos() async {
    for (int i = 1; i <= 10; i++) {
      if (_downloadController!.isClosed) break;
      await Future.delayed(const Duration(milliseconds: 500));
      _downloadController?.add(i / 10); // Envia 0.1, 0.2...
    }
    _downloadController?.close();
  }

  final StreamController<int> _broadcastController = StreamController<int>.broadcast();
  int _contadorBroadcast = 0;

  @override
  void dispose() {
    _downloadController?.close();
    _broadcastController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q6: Tipos de Streams')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // --- BLOCO 1: SINGLE SUBSCRIPTION ---
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green[50],
                border: Border.all(color: Colors.green),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  const Text("1. Assinatura Única (Ex: Download)", style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  if (_baixando) ...[
                     LinearProgressIndicator(value: _progresso),
                     Text("${(_progresso * 100).toInt()}%"),
                  ] else ...[
                    const Text("Nenhum download ativo."),
                  ],
                  const SizedBox(height: 10),
                  ElevatedButton.icon(
                    onPressed: _baixando ? null : _iniciarDownloadSimulado,
                    icon: const Icon(Icons.download),
                    label: const Text("Iniciar Download"),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "Nota: Se tentássemos conectar outro ouvinte aqui, o app travaria!",
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            
            const Divider(height: 40, thickness: 2),

            // --- BLOCO 2: BROADCAST ---
            const Text(
              "2. Transmissões ao Vivo (Broadcast)",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                _contadorBroadcast++;
                _broadcastController.add(_contadorBroadcast);
              },
              child: const Text("Emitir Dado para TODOS"),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildOuvinte("Ouvinte A"),
                _buildOuvinte("Ouvinte B"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOuvinte(String nome) {
    return StreamBuilder<int>(
      stream: _broadcastController.stream,
      builder: (context, snapshot) {
        return Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.blue[100],
            border: Border.all(color: Colors.blue),
            borderRadius: BorderRadius.circular(10),
          ),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(nome, style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(
                snapshot.hasData ? "${snapshot.data}" : "-",
                style: const TextStyle(fontSize: 30),
              ),
            ],
          ),
        );
      },
    );
  }
}