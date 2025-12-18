import 'package:flutter/material.dart';

class Questao27Page extends StatefulWidget {
  const Questao27Page({super.key});

  @override
  State<Questao27Page> createState() => _Questao27PageState();
}

class _Questao27PageState extends State<Questao27Page> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q27: AnimationController')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center, 
          children: [
            const SizedBox(height: 40),

            const Text(
              "Gerencie a Animação",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            const Text(
              "O Controller permite dar Play, Pause, Reverse e definir a duração da animação.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            
            const SizedBox(height: 50),

            RotationTransition(
              turns: _controller,
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [BoxShadow(blurRadius: 10, color: Colors.black26)],
                ),
                child: const Icon(Icons.flutter_dash, size: 80, color: Colors.white),
              ),
            ),

            const SizedBox(height: 50),

            Wrap(
              spacing: 10,
              runSpacing: 10,
              alignment: WrapAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () => _controller.forward(),
                  icon: const Icon(Icons.play_arrow),
                  label: const Text("Iniciar"),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green, foregroundColor: Colors.white),
                ),
                ElevatedButton.icon(
                  onPressed: () => _controller.reverse(),
                  icon: const Icon(Icons.replay),
                  label: const Text("Reverter"),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.orange, foregroundColor: Colors.white),
                ),
                ElevatedButton.icon(
                  onPressed: () => _controller.stop(),
                  icon: const Icon(Icons.pause),
                  label: const Text("Pausar"),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red, foregroundColor: Colors.white),
                ),
                ElevatedButton.icon(
                  onPressed: () => _controller.repeat(),
                  icon: const Icon(Icons.loop),
                  label: const Text("Loop"),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.purple, foregroundColor: Colors.white),
                ),
              ],
            ),
            
            const SizedBox(height: 30),
            
            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Text(
                  "Valor do Controller: ${_controller.value.toStringAsFixed(2)}",
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                );
              },
            ),
            
            const SizedBox(height: 40), 
          ],
        ),
      ),
    );
  }
}