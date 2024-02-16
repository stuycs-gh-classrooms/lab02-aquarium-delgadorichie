class Tank {
  int tx, ty, tw, th, fh;
  Tank(int tankx, int tanky, int tankw, int tankh, int floorh) {
    tx = tankx;
    ty = tanky;
    th = tankh;
    tw = tankw;
    fh = floorh;
  }
  void display() {
    fill(#ABCDEF);
    rect(tx, ty, tw, th);
    fill(#FEDCBA);
    rect(tx, ty + th - fh, tw, th);
    for (int i =0; i< animals.size(); i++) {
      animals.get(i).display();
    }
  }

  void moveAnimals() {
    for (int i =0; i< animals.size(); i++) {
      animals.get(i).swim();
    }
  }
  void addRyanFish(int x, int y) {
    float xSpeed = random(-2, 2);
    float ySpeed = random(-2, 2);
    int xSize = 50 + int(random(-10, 10));
    int ySize = 25 + int(random(-5, 5));
    RyanFish a = new RyanFish(x, y, xSpeed, ySpeed, xSize, ySize, this);
    animals.add(a);
    fish.add(a);
  }
  void addGoldFish(int x, int y) {
    Goldfish a = new Goldfish(x, y);
    animals.add(a);
    fish.add(a);
  }
  void addCrab(int x, int y) {
    float xSpeed = random(-2, 2);
    float ySpeed = random(-2, 2);
    int xSize = 50 + int(random(-10, 10));
    int ySize = 25 + int(random(-5, 5));
    Crab a = new Crab(x, y, xSpeed, ySpeed, xSize, ySize, this);
    animals.add(a);
    sandimals.add(a);
  }
  void addTurtle(int x, int y) {
    Turtle a = new Turtle(x, y);
    animals.add(a);
    sandimals.add(a);
  }
  void cDisplay() {
    for (int i = 0; i<carci.size(); i++) {
      carci.get(i).display();
    }
  }
  void animalsEat() {
    for (int i =0; i< fish.size(); i++) {
      fish.get(i).eat();
    }
  }
  void tcEat() {
    for (int i =0; i< sandimals.size(); i++) {
      sandimals.get(i).eat();
    }
  }
}
