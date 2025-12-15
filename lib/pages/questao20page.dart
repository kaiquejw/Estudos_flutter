import 'package:flutter/material.dart';

class Questao20Page extends StatefulWidget {
  const Questao20Page({super.key});

  @override
  State<Questao20Page> createState() => _Questao20PageState();
}

class _Questao20PageState extends State<Questao20Page> {
  double _alturaEspaco = 20.0;
  double _larguraCaixa = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q20: Widget SizedBox')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              "O SizedBox serve para 2 coisas principais:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 20), 

            // EXEMPLO 1: ESPAÇAMENTO (GAP)
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all(color: Colors.blue), borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  const Text("Uso 1: Dar espaço entre widgets"),
                  const Divider(),
                  Container(height: 50, color: Colors.blue, child: const Center(child: Text("Widget A", style: TextStyle(color: Colors.white)))),
                  
                  // O SIZEDBOX DINÂMICO ESTÁ AQUI
                  SizedBox(
                    height: _alturaEspaco, 
                    child: const Center(child: VerticalDivider(color: Colors.red, thickness: 2)), 
                  ),

                  Container(height: 50, color: Colors.blue, child: const Center(child: Text("Widget B", style: TextStyle(color: Colors.white)))),
                  
                  const SizedBox(height: 10),
                  Text("Altura do Espaço: ${_alturaEspaco.toInt()}"),
                  Slider(
                    value: _alturaEspaco,
                    min: 0,
                    max: 100,
                    label: "Espaço",
                    activeColor: Colors.red,
                    onChanged: (v) => setState(() => _alturaEspaco = v),
                  )
                ],
              ),
            ),

            const SizedBox(height: 30),

            // EXEMPLO 2: FORÇAR TAMANHO
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all(color: Colors.green), borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  const Text("Uso 2: Definir tamanho fixo"),
                  const Divider(),
                  Center(
                    child: Container(
                      color: Colors.grey[300],
                      child: SizedBox(
                        width: _larguraCaixa,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))
                          ),
                          child: const Text("Botão", overflow: TextOverflow.ellipsis),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text("Largura da Caixa: ${_larguraCaixa.toInt()}"),
                  Slider(
                    value: _larguraCaixa,
                    min: 50,
                    max: 300,
                    activeColor: Colors.green,
                    onChanged: (v) => setState(() => _larguraCaixa = v),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}