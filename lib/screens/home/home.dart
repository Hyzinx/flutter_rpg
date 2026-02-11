import 'package:flutter/material.dart';
import 'package:flutter_rpg/models/character.dart';
import 'package:flutter_rpg/screens/character_card.dart';
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
            Expanded(
              child: ListView.builder(
                itemCount: characters.length,
                itemBuilder: (_, index) {
                  return CharacterCard(characters[index]);
                },
              ),
            ),
            StyleButton(onPressed: () {}, child: StyleHeadline("Create New")),
          ],
        ),
      ),
    );
  }
}
