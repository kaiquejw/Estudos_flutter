import 'package:flutter/material.dart';

class Questao16Page extends StatefulWidget {
  const Questao16Page({super.key});

  @override
  State<Questao16Page> createState() => _Questao16PageState();
}

class _Questao16PageState extends State<Questao16Page> {
  String? _nomeUsuario;
  
  String _resultado = "";

  void _avaliarExpressao() {
    setState(() {

      _resultado = _nomeUsuario ?? "Visitante";
    });
  }

  @override
  void initState() {
    super.initState();
    _avaliarExpressao();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q16: Operador ??')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              "O operador '??' serve para fornecer um valor padrão caso a variável seja nula.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),
            
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                'String resultado = nome ?? "Visitante";',
                style: TextStyle(color: Colors.greenAccent, fontFamily: 'monospace', fontSize: 16),
              ),
            ),
            
            const SizedBox(height: 30),

            const Text("Estado da variável 'nome':"),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _nomeUsuario = null; 
                      _avaliarExpressao();
                    });
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: _nomeUsuario == null ? Colors.red : null),
                  child: const Text("valor = null"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _nomeUsuario = "Dev Flutter"; 
                      _avaliarExpressao();
                    });
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: _nomeUsuario != null ? Colors.green : null),
                  child: const Text('valor = "Dev Flutter"'),
                ),
              ],
            ),

            const SizedBox(height: 40),
            
            const Text("Resultado Final:", style: TextStyle(fontSize: 20)),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.blue),
              ),
              child: Text(
                _resultado,
                style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue),
              ),
            ),
            if (_nomeUsuario == null)
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text("(Usou o valor padrão 'Visitante' pois era nulo)", style: TextStyle(color: Colors.grey)),
              ),
          ],
        ),
      ),
    );
  }
}