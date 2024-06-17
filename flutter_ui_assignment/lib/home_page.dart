// home_page.dart
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<String> items = List<String>.generate(20, (i) => "Item $i");

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            onTap: () {
              // handle item selection
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Selected ${items[index]}')),
              );
            },
          );
        },
      ),
    );
  }
}
