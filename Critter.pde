abstract class Critter {
  int age = 0;
  int health = 100;
  int luck = int(random(10));

  abstract void passDay();
  abstract String typeOfCritter();

  int getAge() {
    return age;
  }

  void age() {
    age = age + 1;
  }

  void setAge(int newAge) {
    age = newAge;
  }

  int getHealth() {
    return health;
  }

  void setHealth(int newHealth) {
    health = newHealth;
  }

  int getLuck() {
    return luck;
  }

  void setLuck(int newLuck) {
    luck = newLuck;
  }

  String toString() {
    return "Age: " + age + " - Health: " + health + " - Luck: " + luck;
  }

  boolean calculateChances(int pct) {
    int odds = int(random(0, luck/2) + random(10));
    if (odds >= pct/10) {
      return true;
    } else {
      return false;
    }
  }
}

