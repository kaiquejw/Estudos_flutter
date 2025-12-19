import 'package:flutter/material.dart';

class Questao47Page extends StatefulWidget {
  const Questao47Page({super.key});

  @override
  State<Questao47Page> createState() => _Questao47PageState();
}

class _Questao47PageState extends State<Questao47Page> {
  String _status = "Pendente";
  Color _corStatus = Colors.grey;
  IconData _iconeStatus = Icons.watch_later_outlined;

  void _executarFuture() async {
    setState(() {
      _status = "Aguardando (Future em andamento)...";
      _corStatus = Colors.blue;
      _iconeStatus = Icons.hourglass_top;
    });

    await Future.delayed(const Duration(seconds: 3));

    if (mounted) {
      setState(() {
        _status = "Concluído! Valor: 'Olá'";
        _corStatus = Colors.green;
        _iconeStatus = Icons.check_circle;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q47: Futures')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Icon(_iconeStatus, size: 100, color: _corStatus),
            const SizedBox(height: 20),

            const Text(
              "O que é um Future?",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Um Future representa um valor ou erro que ainda não existe, mas existirá no futuro. É usado para operações que levam tempo.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),

            const SizedBox(height: 40),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: _corStatus.withOpacity(0.1),
                border: Border.all(color: _corStatus),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  const Text("Estado Atual:", style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 5),
                  Text(_status, textAlign: TextAlign.center, style: TextStyle(color: _corStatus, fontSize: 16)),
                ],
              ),
            ),

            const SizedBox(height: 30),

            ElevatedButton.icon(
              onPressed: _executarFuture,
              icon: const Icon(Icons.play_arrow),
              label: const Text("Iniciar Future (3s)"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, foregroundColor: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}