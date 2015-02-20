class Environment {
  ArrayList<Critter> population = new ArrayList<Critter>(15);

  void populate() {
    for (int i=0; i<=5; i++) {
      //Add Smelly Critters
      population.add();
    }
    for (int i=0; i<=5; i++) {
      //Add Ugly Critters
      population.add();
    }
    for (int i=0; i<=5; i++) {
      //Add Awkward Critters
      population.add();
    }
  }

  void passDay() {
    for (int i=0; i< population.size (); i++) {
      population.get(i).passDay();
      
      if (population.get(i).getHealth() > 100){
        population.get(i).getHealth() = 100;
      } else if (population.get(i).getHealth() < 0){
        population.remove(i);     
      }
    }
    
    println("Summary");
  }
}

