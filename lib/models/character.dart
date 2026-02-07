import 'package:flutter_rpg/models/status.dart';

class Character with Status {
  Character({required this.id, required this.name, required this.slogan});

  final String name;
  final String slogan;
  final String id;

  bool _isFav = false;

  void toggleIsFav() {
    _isFav = !_isFav;
  }
}
