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

List<Character> characters = [
  Character(
    id: '1',
    name: 'Klara',
    vocation: Vocation.wizard,
    slogan: 'Kapumf!',
  ),
  Character(
    id: '2',
    name: 'Jonny',
    vocation: Vocation.junkie,
    slogan: 'Light me up...',
  ),
  Character(
    id: '3',
    name: 'Crimson',
    vocation: Vocation.raider,
    slogan: 'Fire in the hole!',
  ),
  Character(
    id: '4',
    name: 'Shaun',
    vocation: Vocation.ninja,
    slogan: 'Alright then gang.',
  ),
];
