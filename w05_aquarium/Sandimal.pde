class Sandimal extends Animal {
  Sandimal(int xpos, int ypos, float xs, float ys, int xW, int yH, Tank t) {
    super(xpos, ypos, xs, ys, xW, yH, t);
    hunger = 50;
  }
  Sandimal(int x, int y) {
    super(x, y);
    hunger = 50;
  }
  void display() {
    super.display();
  }

  boolean collisionCheck(Carcass other) {
    return (dist(pos.x + aw/1.5, pos.y + ah/1.5, other.ccx, other.ccy)<aw/2);
  }
  void eat() {
    for(int i = 0; i<carci.size();i++){
    if (collisionCheck(carci.get(i))) {
      if(sqrt(carci.get(i).size) > 2.7){
      hunger += log(sqrt(carci.get(i).size));}
      else{hunger++;}
      aw += .1;
      ah+=.1;
      carci.remove(carci.get(i));
    }
  }
  }
}
