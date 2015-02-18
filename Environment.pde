class Environment {
  Critter[] population = new Critter[15];

  void passDay() {
    for (int i = 0, i< population.length, i++) {
      population[i].passDay();
    }
    println("Summary");
  }
}

