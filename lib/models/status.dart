mixin Status {
  int _health = 10;
  int _attack = 10;
  int _defence = 10;
  int _skill = 10;
  int _points = 10;

  bool deincreaseChecks(int value) => (value > 5) ? true : false;

  void deincreaseHealth() {
    if (deincreaseChecks(_health)) {
      _health--;
      _points++;
    }
  }

  void deincreaseAttack() {
    if (deincreaseChecks(_attack)) {
      _attack--;
      _points++;
    }
  }

  void deincreaseDefence() {
    if (deincreaseChecks(_defence)) {
      _defence--;
      _points++;
    }
  }

  void deincreaseSkill() {
    if (deincreaseChecks(_skill)) {
      _skill--;
      _points++;
    }
  }

  void increaseHealth() => _health++;
  void increaseAttack() => _attack++;
  void increaseDefence() => _defence++;
  void increaseSkill() => _skill++;

  void manageTheStat(bool Function() method) {
    if (_points > 0) {
      method();
    }
  }
}
