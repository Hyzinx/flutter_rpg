import 'package:flutter/material.dart';
import 'package:flutter_rpg/models/skill.dart';

class SkillCard extends StatelessWidget {
  const SkillCard({required this.skill, required this.onTap,required this.selected, super.key});

  final Skill skill;
  final void Function(Skill) onTap;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(skill);
      },
      child: Container(
        color:selected? Colors.amber:Colors.transparent,
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(2),
        child: Image.asset(
          "assets/img/skills/${skill.image}",
          width: 70,
        ),
      ),
    );
  }
}
