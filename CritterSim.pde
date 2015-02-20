Environment e;
int numOfDays = 0;

void setup() {
  size(200, 200);
  e = new Environment();
  e.populate();
  e.passDay(0);
  println("");
  println("Press a key to travel 30 days into the future!");
}

void draw() {
  background(255);
  fill(0);
  textSize(30);
  text("Day " + numOfDays, 0, height-10);
}

void keyReleased() {
  numOfDays = numOfDays + 30;
  println("");
  println("");
  println("Day " + numOfDays + ":");
  println("");
  e.passDay(numOfDays);
}

