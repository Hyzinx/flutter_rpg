import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: SandBox()));
}

class SandBox extends StatelessWidget {
  const SandBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SandBox"),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      body: Text("SandBox"),
    );
  }
}
