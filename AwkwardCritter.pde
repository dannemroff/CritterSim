class AwkwardCritter extends Critter {

  void AwkwardCritter(){
    
  }

  void passDay() {
    eat();
    yodel();
    meditate();
    snooze();
    age();
  }

  void eat() {
    if (calculateChances(85)) {
      health = health + 2;
    } else {
      health = health - 20;
    }
  }
  
  void yodel(){
  if(health > 80){
    if (luck > 7){
      health = health + 3;
    } else {
      health = health + 2;
    }
  }
  }

  void meditate(){
      if (calculateChances(50)){
      health = health + 2;
    } else {
      health = health - 7;
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

