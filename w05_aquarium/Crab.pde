class Crab extends Animal{ //My Animal
  Crab(int xpos, int ypos, float xs, float ys,int xW, int yH, Tank t){
    super(xpos,ypos,xs,ys,xW,yH,t);
  }
  void display(){
    super.display();
    
  cx = pos.x + aw/2;
    cy = pos.y + ah/2;
    if(!perished){
  float xScaleFactor =ah/170;
  float yScaleFactor =aw/140;
  fill(255,0,0);
  pushMatrix();
  translate(pos.x,pos.y);
  beginShape();
  vertex(15*xScaleFactor,80*yScaleFactor);
  vertex(15*xScaleFactor,60*yScaleFactor);
  vertex(10*xScaleFactor,60*yScaleFactor);
  vertex(0*xScaleFactor,30*yScaleFactor);
  vertex(10*xScaleFactor,13*yScaleFactor);
  vertex(18*xScaleFactor,0*yScaleFactor);
  vertex(18*xScaleFactor,53*yScaleFactor);
  vertex(23*xScaleFactor,53*yScaleFactor);
  vertex(23*xScaleFactor,0*yScaleFactor);
  vertex(33*xScaleFactor,13*yScaleFactor);
  vertex(41*xScaleFactor,30*yScaleFactor);
  vertex(31*xScaleFactor,60*yScaleFactor);
  vertex(26*xScaleFactor,60*yScaleFactor);
  vertex(35*xScaleFactor,80*yScaleFactor);
  vertex(60*xScaleFactor,60*yScaleFactor);
  vertex(110*xScaleFactor,60*yScaleFactor);
  vertex(135*xScaleFactor,80*yScaleFactor);
  vertex(144*xScaleFactor,60*yScaleFactor);
  vertex(139*xScaleFactor,60*yScaleFactor);
  vertex(129*xScaleFactor,30*yScaleFactor);
  vertex(137*xScaleFactor,13*yScaleFactor);
  vertex(147*xScaleFactor,0*yScaleFactor);
  vertex(147*xScaleFactor,53*yScaleFactor);
  vertex(152*xScaleFactor,53*yScaleFactor);
  vertex(152*xScaleFactor,0*yScaleFactor);
  vertex(160*xScaleFactor,13*yScaleFactor);
  vertex(170*xScaleFactor,30*yScaleFactor);
  vertex(160*xScaleFactor,60*yScaleFactor);
  vertex(155*xScaleFactor,60*yScaleFactor);
  vertex(155*xScaleFactor,80*yScaleFactor);
  vertex(135*xScaleFactor,120*yScaleFactor);
  vertex(110*xScaleFactor,140*yScaleFactor);
  vertex(60*xScaleFactor,140*yScaleFactor);
  vertex(35*xScaleFactor,120*yScaleFactor);
  endShape(CLOSE);
  popMatrix();}
  }
  void swim(){
    if(!perished){
    pos.x += xspeed; //moves like an animal but with a bit of randomness (okay, maybe more than a bit)
    pos.y += yspeed;
    if(pos.x + aw > tank.tx + tank.tw){
      pos.x = tank.tx + tank.tw - aw;
      xspeed = random(-2,0);
    }
    if(pos.x < tank.tx){
      pos.x = tank.tx;
      xspeed = random(0,2);
    }
    if(pos.y + ah > tank.ty + tank.th){
      pos.y = tank.ty + tank.th - ah;
      yspeed = random(-2,0);
    }
    if(pos.y < tank.ty + tank.th - tank.fh){
      pos.y = tank.ty + tank.th - tank.fh;
      yspeed = random(0,2);
    }
    float randomVarianceX = random(-.3,.3);
    float randomVarianceY = random(-.3,.3);
    xspeed += randomVarianceX;
    yspeed += randomVarianceY;
  }}
}
