import 'package:flutter/material.dart';

class Questao53Page extends StatefulWidget {
  const Questao53Page({super.key});

  @override
  State<Questao53Page> createState() => _Questao53PageState();
}

class _Questao53PageState extends State<Questao53Page> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this, 
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q53: O que é Ticker?')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const SizedBox(height: 40),

            ScaleTransition(
              scale: Tween(begin: 0.8, end: 1.2).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut)),
              child: const Icon(Icons.favorite, size: 100, color: Colors.red),
            ),
            
            const SizedBox(height: 30),

            const Text(
              "O Coração da Animação",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Um Ticker avisa ao Flutter a cada frame (60 vezes por segundo): 'Ei, passou um tempinho, desenhe a tela de novo!'.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),

            const SizedBox(height: 40),

            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.red[50],
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.red.shade200),
              ),
              child: const Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.timelapse, color: Colors.red),
                    title: Text("60 FPS"),
                    subtitle: Text("O Ticker garante que a animação seja suave."),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.sync, color: Colors.red),
                    title: Text("vsync: this"),
                    subtitle: Text("Conecta o controller ao refresh rate da tela."),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}