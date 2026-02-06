import 'package:flutter/material.dart';
import 'package:flutter_rpg/shared/style_button.dart';
import 'package:flutter_rpg/shared/style_text.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: StyleTitle("Your Characters")),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            StyleButton(onPressed: () {}, child: StyleHeadline("Create New")),
          ],
        ),
      ),
    );
  }
}
