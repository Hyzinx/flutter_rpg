import 'package:flutter_rpg/models/skill.dart';
import 'package:flutter_rpg/models/status.dart';
import 'package:flutter_rpg/models/vocation.dart';

class Character with Status {
  Character({
    required this.id,
    required this.name,
    required this.slogan,
    required this.vocation,
  });

  final Set<Skill> skills = {};
  final String name;
  final String slogan;
  final String id;
  final Vocation vocation;
  bool get isFav => _isFav;

  bool _isFav = false;

  void toggleIsFav() {
    _isFav = !_isFav;
  }

  void updateSkill(Skill skill) {
    skills.clear();
    skills.add(skill);
  }
}
