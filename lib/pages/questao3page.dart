import 'package:flutter/material.dart';

class Q03ContainerPage extends StatelessWidget {
  const Q03ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q3: Container & Decoration')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(5, 5))
                ],
              ),
              alignment: Alignment.center,
              child: const Text("Box Decoration", style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 30),
            Container(
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red, width: 3),
                gradient: const LinearGradient(
                  colors: [Colors.orange, Colors.yellow],
                ),
              ),
              alignment: Alignment.center,
              child: const Text("Gradiente & Borda", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}