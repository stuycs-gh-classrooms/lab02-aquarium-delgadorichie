Tank t;
int tankX = 0;
int tankY = 50;
int floorH = 100;
int tankW;
int tankH;
int tankL;
int x;
float tankV;
ArrayList<Animal> animals;
Goldfish demo,demo2;
Turtle turt1;
Crab c0;

void setup() {
  animals = new ArrayList<Animal>();
  size(600, 600);
  tankW = width;
  tankH = height - 50;
  tankL = height/2;
  // 30 to an inch
  // w = 20 in, h = 18 in, l = 10 in
  tankV = tankW* tankH * tankL;
  t = new Tank(tankX, tankY, tankW, tankH, floorH);
  t.display();
  turt1 = new Turtle(220,530);
}//setup


void draw() {
  x = animals.size();
  println(x);
  background(150);
  t.moveAnimals();
  t.display();
  fill(#FFFFFF);
  stroke(#FFFFFF);
  triangle(0,0,0,tankY, tankY * sqrt(3),0);
  stroke(#000000);
  t.moveAnimals();
 // t.allEat();
  //if(animals.size()>10){
 // println(animals.get(10).hunger);}
 // println(mouseX + " " + mouse
}

void mouseClicked() {
}
void keyPressed(){
  if(key == '1'){
    t.addRyanFish(mouseX,mouseY);
  }
  if(key == '2'){
    t.addCrab(mouseX,mouseY);}
  if(key == '3'){
    t.addGoldFish(mouseX,mouseY); 
  }
  if(key == '4'){
    t.addTurtle(mouseX,mouseY); 
  }
}
