class Goldfish extends Fish {
  float fsize;
  float headhits;
  Goldfish(int x, int y) {
    super(x, y);
    ratio = ah/aw;
    headhits=0;
  }
   void swim() {
    cx = pos.x + aw/2;
    cy = pos.y + ah/2;
    if (alive) {

      if (cx >= width - aw/2 ||
        cx <= aw/2) {
        xspeed*= -1;
        headhits++;
      }
      if (cy >= height - t.fh -ah/2||
        cy <= tankY + ah/2 ) {
        yspeed*= -1;
        headhits++;
      }
    }
    pos.x += xspeed;
    pos.y += yspeed;
    if(headhits>10){
     perish();
     // the goldfish dies of too many head hits. Cause its kind of feeble.
    }
  }
 
  void display() {
    super.display();
    if (!perished) {
      fill(250, 200, 50);
      ellipse(cx, cy, aw, ah);
      if (xspeed<0) {
        triangle(cx + aw/2, cy, cx + aw, cy + ah/2, cx + aw, cy - ah/2);
        fill(#000000);
        circle(cx - aw /4, cy - ah/5, sqrt(log(fsize)));
      }
      if (xspeed>0) {
        triangle(cx - aw/2, cy, cx - aw, cy + ah/2, cx - aw, cy - ah/2);
        fill(#000000);
        circle(cx + aw /4, cy - ah/5, sqrt(log(fsize)));
      }
    }
  }
}
