import 'package:flutter/material.dart';

class Questao30Page extends StatefulWidget {
  const Questao30Page({super.key});

  @override
  State<Questao30Page> createState() => _Questao30PageState();
}

class _Questao30PageState extends State<Questao30Page> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();

  List<String> noticias = [
    "Notícia 1: Flutter é produtivo",
    "Notícia 2: Dart é fácil de aprender",
    "Notícia 3: Hot Reload salva vidas",
  ];

  Future<void> _atualizarLista() async {
    await Future.delayed(const Duration(seconds: 2));

    if (!mounted) return;

    setState(() {
      noticias.insert(0, "Nova Notícia às ${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Q30: RefreshIndicator'),
        actions: [
          IconButton(
            tooltip: "Atualizar Lista",
            icon: const Icon(Icons.refresh),
            onPressed: () {
              _refreshIndicatorKey.currentState?.show();
            },
          ),
          const SizedBox(width: 10), 
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            color: Colors.blue[50],
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.info_outline, color: Colors.blue, size: 20),
                SizedBox(width: 10),
                Text(
                  "Use o botão acima para atualizar a lista de notícias.",
                  style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          Expanded(
            child: RefreshIndicator(
              key: _refreshIndicatorKey, 
              onRefresh: _atualizarLista,
              color: Colors.white,
              backgroundColor: Colors.blue,
              strokeWidth: 3,
              
              child: ListView.separated(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(15),
                itemCount: noticias.length,
                separatorBuilder: (_, __) => const Divider(),
                itemBuilder: (context, index) {
                  final bool isFirst = index == 0;
                  
                  return ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    leading: CircleAvatar(
                      backgroundColor: isFirst ? Colors.green : Colors.blue,
                      child: Icon(isFirst ? Icons.new_releases : Icons.article, color: Colors.white),
                    ),
                    title: Text(
                      noticias[index],
                      style: TextStyle(
                        fontWeight: isFirst ? FontWeight.bold : FontWeight.normal,
                        color: isFirst ? Colors.black : Colors.black87,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}