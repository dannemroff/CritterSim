Environment e;
int numOfDays = 0;

void setup() {
  size(200, 200);
  e = new Environment();
  e.populate();
  //println("");
  println("Press ENTER to travel 1 day into the future");
  println("Or press SPACE to travel 30 days");
}

void draw() {
  background(255);
  fill(0);
  textSize(30);
  text("Day " + numOfDays, 0, height-10);
}

void keyPressed() {
  if (key == ' ') {
    numOfDays = numOfDays + 30;
    println("");
    println("");
    println("Day " + numOfDays + ":");
    println("");
    for(int i=0; i < 30; i++){
    e.passDay();
    }
  } else if (keyCode == ENTER) {
    numOfDays = numOfDays + 1;
    println("");
    println("");
    println("Day " + numOfDays + ":");
    println("");
    e.passDay();
  }
}

