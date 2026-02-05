import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Your Characters")),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text("Character List"),
            Text(
              "Charcter list ",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              "Charcter list ",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            FilledButton(onPressed: () {}, child: Text("Create New")),
          ],
        ),
      ),
    );
  }
}
