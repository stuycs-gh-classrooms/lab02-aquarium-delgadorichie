class Goldfish extends Animal {
  float fsize;
 
 
  Goldfish(int x, int y) {
    super(x, y);
    ratio = ah/aw;
  }
  void display() {
    super.display();
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
