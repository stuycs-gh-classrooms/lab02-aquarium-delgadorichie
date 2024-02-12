class Animal{
  PVector pos;
  float aw,ah;
  float cx, cy;
  float xspeed, yspeed;
  float hunger;
  boolean alive;
   float ratio; // the ratio of a turtle/fish's width/height, stored so that if it
  // eats another fish it retains its shape, but enlarges.
  Animal(int x, int y){
    alive = true;
  hunger = 10;
  pos= new PVector(x,y);
  aw = random(15,100);
  ah = random(10,100);
  cx = pos.x + aw/2;
  cy = pos.y + ah/2;
  xspeed = random(0,1.5) *  int(pow(-1, int(random(0,2))));
  yspeed =  random(0,1) *  int(pow(-1, int(random(0,2))));
  t.addAnimal(this);
  }
  Animal(int x, int y, int aww, int ahh){
    alive = true;
    hunger = 10;
     pos= new PVector(x,y);
  aw = aww;
  ah = ahh;
  cx = pos.x + aw/2;
  cy = pos.y + ah/2;
  xspeed = random(0,1.5) *  int(pow(-1, int(random(0,2))));
  yspeed =  random(0,1) *  int(pow(-1, int(random(0,2))));
  t.addAnimal(this);
  }
  void display(){
    fill(250,200,50);
   rect(pos.x,pos.y,aw,ah);
  }
  void swim(){
    cx = pos.x + aw/2;
    cy = pos.y + ah/2;
    if(alive){
    
    if (cx >= width - aw/2 ||
        cx <= aw/2) {
        xspeed*= -1;
     }
     if (cy >= height - t.fh -ah/2||
         cy <= tankY + ah/2 ) {
         yspeed*= -1;
  }}
  pos.x += xspeed;
  pos.y += yspeed;
}
}
