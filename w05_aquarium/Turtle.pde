class Turtle extends Animal {
  Turtle(int x, int y) {
    super(x, y);
    xspeed = random(.25, .75) * int(pow(-1, int(random(0, 2))));
    yspeed = 0;
    aw = random(60, 80);
    ah = random(50, 55);
  }
  void display() {
    fill(0, 48, 32);
    arc(pos.x + aw/3, pos.y + ah/2, aw/1.5, ah, PI, 2*PI, CHORD);
    fill(0, 200, 0);
    rect(pos.x, pos.y + ah/2, aw/6, ah/2);
    rect(pos.x + aw/2, pos.y + ah/2, aw/6, ah/2);
    if (xspeed>0) {
      circle(pos.x + 5 * aw/6, pos.y + ah/2, aw/3);
    }
    if (xspeed<0) {
      circle(pos.x - aw/6, pos.y + ah/2, aw/3);
    }
  }
  boolean collisionCheck(Goldfish other) {
    return (dist(pos.x + 5 * aw/6, pos.y + ah/2, other.cx, other.cy)<other.aw/4);
  }
  void eat(Goldfish other) {
    if (other.perished && !other.STOP && collisionCheck(other)) {
      other.STOP = true;
      ah += log(other.fsize) * ratio;
      aw += log(other.fsize);
    }
  }
}
