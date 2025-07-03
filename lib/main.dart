import 'package:flutter/material.dart';

void main() {
  runApp(const PropertyExplorerApp());
}

class PropertyExplorerApp extends StatelessWidget{
  const PropertyExplorerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Property Explorer',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Property Explorer'),
        ),
        body: const Center(
          child: Text('Hello Clean Architecture!'),
        ),
      ),
    );
  }

}