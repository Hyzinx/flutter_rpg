import 'package:flutter/material.dart';
import 'package:flutter_rpg/models/character.dart';
import 'package:flutter_rpg/shared/style_text.dart';
import 'package:flutter_rpg/theme.dart';

class Profile extends StatelessWidget {
  const Profile({super.key, required this.character});

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: StyleTitle(character.name)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              color: AppColors.secondaryColor.withOpacity(0.3),
              child: Row(
                children: [
                  Image.asset(
                    "assets/img/vocations/${character.vocation.image}",
                    width: 140,
                    height: 140,
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        StyleHeadline(character.vocation.title),
                        StyleText(character.vocation.description),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Center(child: Icon(Icons.code, color: AppColors.primaryColor)),
            Container(
              color: AppColors.secondaryColor.withOpacity(0.3),
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  StyleHeadline("Slogan"),
                  StyleText(character.slogan),
                  SizedBox(height: 10),
                  StyleHeadline("Weapon of choice"),
                  StyleText(character.vocation.weapon),
                  SizedBox(height: 10),
                  StyleHeadline("Unique Ability"),
                  StyleText(character.vocation.ability),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
