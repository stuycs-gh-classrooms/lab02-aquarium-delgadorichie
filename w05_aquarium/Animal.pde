class Animal {
  PVector pos;
  float aw, ah;
  float cx, cy;
  float size ;
  boolean STOP = false;
  float xspeed, yspeed;
  float hunger;
  Tank tank;
  boolean perished;
  boolean alive;
  float ratio; // the ratio of a turtle/fish's width/height, stored so that if it
  // eats another fish it retains its shape, but enlarges.
  Animal(int x, int y) {
    alive = true;
    hunger = 10;
    pos= new PVector(x, y);
    aw = random(15, 50);
    ah = random(10, 50);
    cx = pos.x + aw/2;
    cy = pos.y + ah/2;
    xspeed = random(0, 1.5) *  int(pow(-1, int(random(0, 2))));
    yspeed =  random(0, 1) *  int(pow(-1, int(random(0, 2))));
    size =  aw * ah;
  }
  Animal(int x, int y, float xsp, float ysp, int aww, int ahh, Tank T) {
    alive = true;
    hunger = 10;
    pos= new PVector(x, y);
    aw = aww;
    ah = ahh;
    cx = pos.x + aw/2;
    cy = pos.y + ah/2;
    xspeed = xsp;
    yspeed =ysp;
    tank = T;
    size = aw * ah;
  }
  void display() {
    
    stroke(#000000);
    
    if (!STOP) {
      hunger-= .01;
    }

    if (hunger<0) {
      perish();
    }
  }
  void swim() {
    cx = pos.x + aw/2;
    cy = pos.y + ah/2;
    if (alive) {

      if (cx >= width - aw/2 ||
        cx <= aw/2) {
        xspeed*= -1;
      }
      if (cy >= height - t.fh -ah/2||
        cy <= tankY + ah/2 ) {
        yspeed*= -1;
      }
    }
    pos.x += xspeed;
    pos.y += yspeed;
  }
  void perish() {
    if (alive) {
      Carcass a = new Carcass(pos.x, pos.y, aw, ah);
      carci.add(a);
      alive = !alive;
      perished = true;
      animals.remove(this);      
    }
  }


  boolean collisionCheck(Animal other) {
    if (other == this) {
      return false;
    } else {
      return(dist(this.cx, this.cy, other.cx, other.cy)
        <= (this.aw/1.5 + other.aw/1.5));
    }
  }//collisionCheck
}
