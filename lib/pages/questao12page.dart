import 'package:flutter/material.dart';

class Questao12Page extends StatelessWidget {
  const Questao12Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q12: Data de Lançamento')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text("Linha do Tempo", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Expanded(
              child: Stepper(
                currentStep: 2, 
                controlsBuilder: (c, d) => const SizedBox.shrink(),
                steps: const [
                  Step(
                    title: Text("2015 - O Início"),
                    content: Text("Anunciado como projeto 'Sky' na Dart Developer Summit."),
                    isActive: true,
                    state: StepState.complete,
                  ),
                  Step(
                    title: Text("Maio de 2017 - Alpha"),
                    content: Text("O Google lança a primeira versão Alpha pública."),
                    isActive: true,
                    state: StepState.complete,
                  ),
                  Step(
                    title: Text("Dezembro de 2018 - Flutter 1.0"),
                    content: Text("Lançamento oficial da primeira versão estável no evento Flutter Live."),
                    isActive: true,
                    state: StepState.complete,
                  ),
                  Step(
                    title: Text("Dezembro de 2019 - Versão 1.12"),
                    content: Text("Grande atualização mencionada na sua referência."),
                    isActive: true,
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