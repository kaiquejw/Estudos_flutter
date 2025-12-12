import 'package:flutter/material.dart';

class Q04RowColumnPage extends StatefulWidget {
  const Q04RowColumnPage({super.key});

  @override
  State<Q04RowColumnPage> createState() => _Q04RowColumnPageState();
}

class _Q04RowColumnPageState extends State<Q04RowColumnPage> {
  bool isRow = true;
  MainAxisAlignment alinhamento = MainAxisAlignment.start;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Q4: Row & Column')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text("Tipo: "),
                Switch(value: isRow, onChanged: (v) => setState(() => isRow = v)),
                Text(isRow ? "Row (Linha)" : "Column (Coluna)"),
              ],
            ),
          ),
          Wrap(
            spacing: 5,
            children: MainAxisAlignment.values.map((e) {
              return ChoiceChip(
                label: Text(e.name),
                selected: alinhamento == e,
                onSelected: (v) => setState(() => alinhamento = e),
              );
            }).toList(),
          ),
          const Divider(),
          Expanded(
            child: Container(
              color: Colors.grey[300],
              width: double.infinity,
              child: Flex(
                direction: isRow ? Axis.horizontal : Axis.vertical,
                mainAxisAlignment: alinhamento,
                children: const [
                  Icon(Icons.star, size: 50, color: Colors.blue),
                  Icon(Icons.star, size: 50, color: Colors.red),
                  Icon(Icons.star, size: 50, color: Colors.green),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}