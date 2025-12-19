import 'package:flutter/material.dart';

class Questao46Page extends StatelessWidget {
  const Questao46Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q46: Front ou Back')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const Text(
              "Flutter é Front-end",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Ele desenha a interface no celular (Android/iOS). Para salvar dados ou login, ele se conecta a um Back-end externo via API.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),

            const SizedBox(height: 50),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildTechIcon(Icons.phone_iphone, "App Flutter", Colors.blue),
                
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(Icons.compare_arrows, size: 40, color: Colors.grey),
                ),

                _buildTechIcon(Icons.storage, "Back-end\n(API/Banco)", const Color.fromARGB(255, 228, 31, 5)),
              ],
            ),

            const SizedBox(height: 40),
            
            const Card(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "Embora seja Front-end, o Flutter pode fazer lógicas complexas, mas o armazenamento pesado fica no servidor.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTechIcon(IconData icon, String label, Color color) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, size: 40, color: color),
        ),
        const SizedBox(height: 10),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, color: color),
        ),
      ],
    );
  }
}