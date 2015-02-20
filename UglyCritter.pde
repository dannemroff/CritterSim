class UglyCritter extends Critter {

  void UglyCritter(){
    
  }

  void passDay() {
    eat();
    snooze();
    age();
  }

  void eat() {
    if (calculateChances(70)) {
      health = health + 4;
    } else {
      health = health - 15;
    }
  }
  
  void snooze(){
    if (calculateChances(50)){
      health = health + 9;
    } else {
      health = health - 2;
    }
  }
  
}

