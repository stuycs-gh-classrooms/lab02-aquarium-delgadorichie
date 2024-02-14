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
    aw = random(15, 100);
    ah = random(10, 100);
    cx = pos.x + aw/2;
    cy = pos.y + ah/2;
    xspeed = random(0, 1.5) *  int(pow(-1, int(random(0, 2))));
    yspeed =  random(0, 1) *  int(pow(-1, int(random(0, 2))));
    size =  aw * ah;
    t.addAnimal(this);
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
    t.addAnimal(this);
    tank = T;
    size = aw * ah;
  }
  void display() {
    stroke(#000000);
    if (!STOP) {
        hunger-= .001;
      }
    if (perished) {
      fill(80,80,80);
      yspeed = 1;
      xspeed = 0;
      ellipse(cx, cy, aw, ah);

      if (pos.y >= height - t.fh + random(10, 50)) {
        yspeed = 0;
      }
      
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
  void die() {
    alive = !alive;
  }
  void perish() {
    if(alive){
    alive = !alive;
    perished = true;}
  }
  void eat(Animal other) {
    if (size > other.size && collisionCheck(other) && (other.alive|| other.perished) && other.hunger < 9) {
      other.die();
      size += other.size;
      hunger += log(other.size);
      aw = sqrt(size/ratio/PI);
      ah = sqrt(size/ratio/PI)*ratio;
      animals.remove(other);
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
