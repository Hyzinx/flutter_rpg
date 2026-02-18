mixin Status {
  int _health = 10;
  int _attack = 10;
  int _defence = 10;
  int _skill = 10;
  int _points = 10;

  int get getPoints => _points;

  Map<String, int> get getStatValues => {
    "Health": _health,
    "Attack": _attack,
    "Defence": _defence,
    "Skill": _skill,
  };

  List<Map<String, String>> get getStatInFormttedList => [
    {'title': 'health', 'value': _health.toString()},
    {'title': 'attack', 'value': _attack.toString()},
    {'title': 'defence', 'value': _defence.toString()},
    {'title': 'skill', 'value': _skill.toString()},
  ];

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

  void increaseHealth() {
    if (_points > 0) {
      _health++;
      _points--;
    }
  }

  void increaseAttack() {
    if (_points > 0) {
      _attack++;
      _points--;
    }
  }

  void increaseDefence() {
    if (_points > 0) {
      _defence++;
      _points--;
    }
  }

  void increaseSkill() {
    if (_points > 0) {
      _skill++;
      _points--;
    }
  }

  void manageTheStat(String value, String opration) {
    switch (value) {
      case "health":
        (opration == "+") ? increaseHealth() : deincreaseHealth();
      case "attack":
        (opration == "+") ? increaseAttack() : deincreaseAttack();
      case "defence":
        (opration == "+") ? increaseDefence() : deincreaseDefence();
      case "skill":
        (opration == "+") ? increaseSkill() : deincreaseSkill();
    }
  }
}
