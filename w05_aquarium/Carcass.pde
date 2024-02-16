class Carcass {
  float size;
  float ccx, ccy, ccw, cch;
  int xspeed, yspeed;
  Carcass(float x, float y, float w, float h) {
    ccx = x;
    ccy = y;
    xspeed = 0;
    yspeed = 1;
    ccw = w;
    cch = h;
    size = ccw*cch;
  }
  void display() {
    fill(80, 80, 80);
    yspeed = 1;
    xspeed = 0;
    ellipse(ccx, ccy, ccw, cch);
    if (ccy < height - t.fh + random(10, 50)) {
      ccx += xspeed;
      ccy += yspeed;
    }
  }
}
