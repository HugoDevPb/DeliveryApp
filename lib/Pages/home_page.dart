import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<String> foods = [
    'Hambúrguer',
    'Pizza',
    'Sushi',
    'Batata Frita'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delivery App'),
      ),
      body: ListView.builder(
        itemCount: foods.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(foods[index]),
              subtitle: const Text('Entrega rápida'),
              trailing: const Icon(Icons.fastfood),
            ),
          );
        },
      ),
    );
  }
}
