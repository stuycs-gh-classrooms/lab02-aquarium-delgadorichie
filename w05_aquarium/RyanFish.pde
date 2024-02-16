class RyanFish extends Fish {
  RyanFish(int xpos, int ypos, float xs, float ys, int xW, int yH, Tank t) {
    super(xpos, ypos, xs, ys, xW, yH, t);
  }
  void display() {
    super.display();
    if (!perished) {
      float xScaleFactor; //multiplies x and y offsets so the fish can still fit in the width and height
      float yScaleFactor;
      xScaleFactor = aw/75;
      yScaleFactor = ah/35;
      stroke(0);
      fill(255, 150, 0);
      if (xspeed > 0) {
        beginShape();
        vertex(pos.x, pos.y+5*yScaleFactor);
        vertex(pos.x, pos.y+30*yScaleFactor);
        vertex(pos.x+25*xScaleFactor, pos.y+18*yScaleFactor);
        vertex(pos.x+30*xScaleFactor, pos.y+30*yScaleFactor);
        vertex(pos.x+45*xScaleFactor, pos.y+35*yScaleFactor);
        vertex(pos.x+60*xScaleFactor, pos.y+30*yScaleFactor);
        vertex(pos.x+75*xScaleFactor, pos.y+22*yScaleFactor);
        vertex(pos.x+65*xScaleFactor, pos.y+18*yScaleFactor);
        vertex(pos.x+75*xScaleFactor, pos.y+17*yScaleFactor);
        vertex(pos.x+60*xScaleFactor, pos.y+5*yScaleFactor);
        vertex(pos.x+45*xScaleFactor, pos.y);
        vertex(pos.x+30*xScaleFactor, pos.y+5*yScaleFactor);
        vertex(pos.x+25*xScaleFactor, pos.y+17*yScaleFactor);
        endShape(CLOSE);
      } else {
        beginShape();
        vertex(pos.x+75*xScaleFactor, pos.y+5*yScaleFactor);
        vertex(pos.x+75*xScaleFactor, pos.y+30*yScaleFactor);
        vertex(pos.x+50*xScaleFactor, pos.y+18*yScaleFactor);
        vertex(pos.x+45*xScaleFactor, pos.y+30*yScaleFactor);
        vertex(pos.x+30*xScaleFactor, pos.y+35*yScaleFactor);
        vertex(pos.x+15*xScaleFactor, pos.y+30*yScaleFactor);
        vertex(pos.x, pos.y+22*yScaleFactor);
        vertex(pos.x+10*xScaleFactor, pos.y+18*yScaleFactor);
        vertex(pos.x, pos.y+17*yScaleFactor);
        vertex(pos.x+15*xScaleFactor, pos.y+5*yScaleFactor);
        vertex(pos.x+30*xScaleFactor, pos.y);
        vertex(pos.x+45*xScaleFactor, pos.y+5*yScaleFactor);
        vertex(pos.x+50*xScaleFactor, pos.y+17*yScaleFactor);
        endShape(CLOSE);
      }
    }
  }
  void move() {
    pos.x += xspeed; //moves in a sine wave
    pos.y += yspeed * sin(radians(frameCount));
    if (pos.x + aw > tank.tx + tank.tw) {
      xspeed *= -1;
      pos.x = tank.tx + tank.tw - aw;
    }
    if (pos.x < tank.tx) {
      xspeed *= -1;
      pos.x = tank.tx;
    }
    if (pos.y + ah > tank.ty + tank.th - tank.fh) {
      yspeed *= -1;
      pos.y = tank.ty + tank.th - tank.fh - ah;
    }
    if (pos.y < tank.ty) {
      yspeed *= -1;
      pos.y = tank.ty;
    }
  }
}
