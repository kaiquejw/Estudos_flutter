import 'package:flutter/material.dart';

class Q01StatelessStatefulPage extends StatefulWidget {
  const Q01StatelessStatefulPage({super.key});

  @override
  State<Q01StatelessStatefulPage> createState() => _Q01StatelessStatefulPageState();
}

class _Q01StatelessStatefulPageState extends State<Q01StatelessStatefulPage> {
  int contador = 0;
  Color corBotao = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q1: Stateless vs Stateful')),
      body: Column(
        children: [

          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.grey[200],
            width: double.infinity,
            child: const Column(
              children: [
                Icon(Icons.lock, size: 40, color: Colors.grey),
                Text("Eu sou Stateless. Não mudo nunca!", style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
          
          const Divider(height: 5, thickness: 5),


          Expanded(
            child: Container(
              width: double.infinity,
              color: corBotao.withOpacity(0.1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.touch_app, size: 40, color: Colors.green),
                  Text("Eu sou Stateful. Cliques: $contador", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: corBotao),
                    onPressed: () {
                      setState(() {
                        contador++;
                        corBotao = contador % 2 == 0 ? Colors.blue : Colors.orange;
                      });
                    },
                    child: const Text("Clique para mudar o estado", style: TextStyle(color: Colors.white)),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}