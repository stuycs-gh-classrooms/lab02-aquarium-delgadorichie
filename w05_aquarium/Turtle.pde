class Turtle extends Sandimal {
  Turtle(int x, int y) {
    super(x, y);
    xspeed = random(.25, .75) * int(pow(-1, int(random(0, 2))));
    yspeed=0;
    
    aw = random(60, 80);
    ah = random(30, 55);
    hunger = 100;
  }
 Turtle(int xpos, int ypos, float xs, float ys, int xW, int yH, Tank t) {
    super(xpos, ypos, xs, ys, xW, yH, t);
  }
  void display() {
    super.display();
    if (!perished) {
      fill(0, 48, 32);
      arc(pos.x + aw/3, pos.y + ah/1.5, aw/1.5, 1.5 * ah, PI, 2*PI, CHORD);
      fill(0, 200, 0);
      rect(pos.x, pos.y + ah/1.5, aw/6, ah/3);
      rect(pos.x + aw/2, pos.y + ah/1.5, aw/6, ah/3);
      if (xspeed>0) {
        circle(pos.x + 5 * aw/6, pos.y + ah/2, aw/3);
      }
      if (xspeed<0) {
        circle(pos.x - aw/6, pos.y + ah/2, aw/3);
      }
    }
  }
}
