class SmellyCritter extends Critter {


  void passDay() {
    eat();
    dance();
    snooze();
    age();
  }

  void eat() {
    float odds = random(10);
    if (odds <= 4) {
      health = health + 6;
    } else {
      health = health - 10;
    }
  }
  
  void dance(){
   if (age>15){
    health++;
   } 
  }
  
  void snooze(){
    float odds = random(10);
    if (odds <= 8){
      health = health + 2;
    } else {
      health--;
    }
  }
  
}

