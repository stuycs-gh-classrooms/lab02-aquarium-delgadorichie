class Fish extends Animal {

  Fish(int x, int y) {
    super(x, y);
  }
  Fish(int x, int y, float xsp, float ysp, int aww, int ahh, Tank T) {
    super(x, y, xsp, ysp, aww, ahh, T);
  }
  void eat() {
    for(int i = 0; i<fish.size();i++){
    if (!(size <= fish.get(i).size)&& collisionCheck(fish.get(i)) && (fish.get(i).alive) && fish.get(i).hunger < 5) {
      size += log(fish.get(i).size);
      hunger += log(fish.get(i).size);
      aw = sqrt(size/ratio);
      ah = sqrt(size/ratio)*ratio;
      fish.remove(fish.get(i));
    }
  }
  }
 
}
