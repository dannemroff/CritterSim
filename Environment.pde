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
        population.get(i).age(1);

        //limit health (0-100)
        if (population.get(i).getHealth() > 100) {
          population.get(i).setHealth(100);
        } else if (population.get(i).getHealth() <= 0) {
          //RIP
          println("I'm ded...rip, me. -" + population.get(i).typeOfCritter());
          population.remove(i);
        }
      }
    }
    for (int i=0; i<population.size (); i++) {
      //population.get(i).setAge(numOfDays);
      println(population.get(i).toString() + " (" + population.get(i).typeOfCritter() + ")");
    }

    if (population.size() == 0) {
      println("THEY'RE ALL DEAD. AHHHHHHH");
    } else {
      int averageHealth = 0;
      for (int i=0; i< population.size (); i++) {
        averageHealth = averageHealth + population.get(i).getHealth();
      }
      averageHealth = int(averageHealth/population.size());
      println("");
      if (population.size() != 1){
      println("On day " + numOfDays + ", " + population.size() + " critters remain. The community's health is " + averageHealth + ".");
      } else {
      println("On day " + numOfDays + ", " + population.size() + " critter remains. Its health is " + averageHealth + ".");
      }
  }
  }
}

