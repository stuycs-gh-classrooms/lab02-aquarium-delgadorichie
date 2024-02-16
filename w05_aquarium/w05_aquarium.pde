Tank t;
int tankX = 0;
int tankY = 50;
int floorH = 100;
int tankW, tankH;
ArrayList<Animal> animals;
ArrayList<Fish> fish;
ArrayList<Sandimal> sandimals;
ArrayList<Carcass> carci;
Crab c0;
void setup() {
  carci = new ArrayList<Carcass>();
  animals = new ArrayList<Animal>();
  fish = new ArrayList<Fish>();
  sandimals = new ArrayList<Sandimal>();
  size(600, 600);
  tankW = width;
  tankH = height - 50;
  t = new Tank(tankX, tankY, tankW, tankH, floorH);
}//setup


void draw() {
  background(150);
  fill(#FFFFFF);
  stroke(#000000);
  triangle(0, 0, 0, tankY, tankY * sqrt(3), 0);
  t.display();
  t.moveAnimals();
  t.cDisplay();
  t.animalsEat();
  t.tcEat();
}

void keyPressed() {
  if (key == '1') {
    t.addRyanFish(mouseX, mouseY);
  }
  if (key == '3') {
    t.addCrab(mouseX, mouseY);
  }
  if (key == '2') {
    t.addGoldFish(mouseX, mouseY);
  }
  if (key == '4') {
    t.addTurtle(mouseX, mouseY);
  }
}
