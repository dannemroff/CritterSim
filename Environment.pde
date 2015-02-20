class Environment {
  ArrayList<Critter> population = new ArrayList<Critter>(15);

  void populate() {
    for (int i=0; i< 5; i++) {
      //Add Smelly Critters
      population.add(new SmellyCritter());
    }
    for (int i=0; i< 5; i++) {
      //Add Ugly Critters
      population.add(new UglyCritter());
    }
    for (int i=0; i< 5; i++) {
      //Add Awkward Critters
      population.add(new AwkwardCritter());
    }
  }

  void passDay(int days) {
    for (int j=0; j< days; ++j) {
      for (int i=0; i< population.size (); i++) {
        population.get(i).passDay();

        //limit health (0-100)
        if (population.get(i).getHealth() > 100) {
          population.get(i).setHealth(100);
        } else if (population.get(i).getHealth() < 0) {
          //RIP
          println("I'm ded...rip, me. -" + population.get(i).typeOfCritter());
          population.remove(i);
        }
      }
    }
    for (int i=0; i<population.size(); i++) {
      population.get(i).setAge(numOfDays);
      println(population.get(i).toString() + " (" + population.get(i).typeOfCritter() + ")");
    }

    if (population.size() == 0) {
      println("THEY'RE ALL DEAD. AHHHHHHH");
    }
  }
}

