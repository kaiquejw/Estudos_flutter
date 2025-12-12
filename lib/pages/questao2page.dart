import 'package:flutter/material.dart';

class Q02LifecyclePage extends StatefulWidget {
  const Q02LifecyclePage({super.key});

  @override
  State<Q02LifecyclePage> createState() => _Q02LifecyclePageState();
}

class _Q02LifecyclePageState extends State<Q02LifecyclePage> {
  List<String> logs = [];

  @override
  void initState() {
    super.initState();
    _adicionarLog('initState: Widget Nasceu!');
  }

  @override
  void dispose() {
    print('dispose: Widget Morreu!');
    super.dispose();
  }

  void _adicionarLog(String evento) {
    if (mounted) {
      setState(() {
        logs.add('${DateTime.now().toString().split(' ').last} - $evento');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q2: Ciclo de Vida')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              _adicionarLog('setState: Widget Atualizou!');
            },
            child: const Text("Forçar Atualização (setState)"),
          ),
          const Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: logs.length,
              itemBuilder: (context, index) => ListTile(
                leading: const Icon(Icons.history, size: 18),
                title: Text(logs[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}