import 'package:flutter/material.dart';
import 'package:flutter/physics.dart'; // Necessário para a física

class Questao21Page extends StatefulWidget {
  const Questao21Page({super.key});

  @override
  State<Questao21Page> createState() => _Questao21PageState();
}

class _Questao21PageState extends State<Questao21Page> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  
  // Posição atual do objeto (começa no centro)
  Alignment _dragAlignment = Alignment.center;
  
  // Animação que vai calcular o movimento de volta
  Animation<Alignment>? _animation;

  @override
  void initState() {
    super.initState();
    // O limite superior (upperBound) precisa ser infinito para permitir o "overshoot" (o balanço da mola)
    _controller = AnimationController.unbounded(vsync: this);

    _controller.addListener(() {
      setState(() {
        // Se houver uma animação rodando, atualizamos a posição com o valor dela
        if (_animation != null) {
          _dragAlignment = _animation!.value;
        }
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // Função que roda a física quando soltamos o objeto
  void _runAnimation(Offset pixelsPerSecond, Size size) {
    _animation = _controller.drive(
      AlignmentTween(
        begin: _dragAlignment,
        end: Alignment.center,
      ),
    );

    final unitsPerSecondX = pixelsPerSecond.dx / size.width;
    final unitsPerSecondY = pixelsPerSecond.dy / size.height;
    final unitsPerSecond = Offset(unitsPerSecondX, unitsPerSecondY);
    final unitVelocity = unitsPerSecond.distance;

    const spring = SpringDescription(
      mass: 30, 
      stiffness: 1, 
      damping: 1,
    );

    final simulation = SpringSimulation(spring, 0, 1, -unitVelocity);
    _controller.animateWith(simulation);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    
    return Scaffold(
      appBar: AppBar(title: const Text('Q21: Animação Física (Real)')),
      body: Stack(
        children: [
          // --- CAMADA DE TEXTO (CENTRALIZADO NO TOPO) ---
          Align(
            alignment: Alignment.topCenter, // Garante que fique no centro horizontal
            child: Padding(
              padding: const EdgeInsets.all(30.0), // Mais espaço nas bordas
              child: Column(
                mainAxisSize: MainAxisSize.min, // Ocupa só o espaço necessário
                children: const [
                  Text(
                    "Comportamento do Mundo Real",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Arraste o logo abaixo e solte.\nEle usará uma simulação de MOLA (SpringSimulation) para voltar, imitando a física real.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),

          // --- CAMADA INTERATIVA (LOGO) ---
          Align(
            alignment: _dragAlignment,
            child: GestureDetector(
              onPanDown: (details) {
                _controller.stop();
              },
              onPanUpdate: (details) {
                setState(() {
                  _dragAlignment += Alignment(
                    details.delta.dx / (size.width / 2),
                    details.delta.dy / (size.height / 2),
                  );
                });
              },
              onPanEnd: (details) {
                _runAnimation(details.velocity.pixelsPerSecond, size);
              },
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [BoxShadow(blurRadius: 15, color: Colors.black26)],
                ),
                child: const Icon(Icons.flutter_dash, color: Colors.white, size: 60),
              ),
            ),
          ),
        ],
      ),
    );
  }
}