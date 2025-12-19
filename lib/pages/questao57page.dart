import 'package:flutter/material.dart';

class Questao57Page extends StatefulWidget {
  const Questao57Page({super.key});

  @override
  State<Questao57Page> createState() => _Questao57PageState();
}

class _Questao57PageState extends State<Questao57Page> {
  double _flexSpacer1 = 1;
  double _flexSpacer2 = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q57: Spacer Widget')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const Text(
              "Spacer Widget & Flex",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              "O Spacer cria um espaço vazio e flexível entre widgets em uma Row ou Column, ocupando todo o espaço que sobra.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 40),

            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey.shade400),
              ),
              height: 100,
              child: Row(
                children: [
                  _buildBox(Colors.blue, "A"),

                  Spacer(flex: _flexSpacer1.toInt()),

                  _buildBox(Colors.red, "B"),

                  Spacer(flex: _flexSpacer2.toInt()),

                  _buildBox(Colors.green, "C"),
                ],
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Espaço 1: Flex ${_flexSpacer1.toInt()}", style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text("Espaço 2: Flex ${_flexSpacer2.toInt()}", style: const TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),

            const Divider(),

            const Text("Ajuste a força dos espaçadores:", style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 10),
            
            _buildControlRow("Spacer 1 (Azul-Vermelho)", Colors.indigo, _flexSpacer1, (val) {
              setState(() => _flexSpacer1 = val);
            }),
            
            _buildControlRow("Spacer 2 (Vermelho-Verde)", Colors.deepPurple, _flexSpacer2, (val) {
              setState(() => _flexSpacer2 = val);
            }),

            const SizedBox(height: 30),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: const Color(0xFF282C34),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(fontFamily: 'monospace', fontSize: 13),
                      children: [
                        const TextSpan(text: "Row(\n  children: [\n", style: TextStyle(color: Colors.white)),
                        const TextSpan(text: "    BoxA(),\n", style: TextStyle(color: Colors.grey)),
                        TextSpan(text: "    Spacer(flex: ${_flexSpacer1.toInt()}),\n", style: TextStyle(color: Colors.cyanAccent, fontWeight: FontWeight.bold)),
                        const TextSpan(text: "    BoxB(),\n", style: TextStyle(color: Colors.grey)),
                        TextSpan(text: "    Spacer(flex: ${_flexSpacer2.toInt()}),\n", style: TextStyle(color: Colors.cyanAccent, fontWeight: FontWeight.bold)),
                        const TextSpan(text: "    BoxC(),\n  ]\n)", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBox(Color color, String label) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 4, offset: Offset(2, 2))],
      ),
      alignment: Alignment.center,
      child: Text(label, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)),
    );
  }

  Widget _buildControlRow(String label, Color color, double value, Function(double) onChanged) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(color: color, fontWeight: FontWeight.bold)),
        Slider(
          value: value,
          min: 1,
          max: 10,
          divisions: 9,
          activeColor: color,
          label: value.toInt().toString(),
          onChanged: onChanged,
        ),
      ],
    );
  }
}