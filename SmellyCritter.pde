class SmellyCritter extends Critter {

  void SmellyCritter() {
  }

  void passDay() {
    eat();
    dance();
    snooze();
  }

  void eat() {
    if (calculateChances(40)) {
      health = health + 6;
    } else {
      health = health - 10;
    }
  }

  void dance() {
    if (age>15) {
      health++;
    }
  }

  void snooze() {
    if (calculateChances(80)) {
      health = health + 2;
    } else {
      health--;
    }
  }

  String typeOfCritter() {
    return "Smelly Critter";
  }
}

