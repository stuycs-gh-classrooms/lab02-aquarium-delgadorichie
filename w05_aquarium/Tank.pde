class Tank{
  int tx, ty, tw, th, fh;
 Tank(int tankx, int tanky, int tankw, int tankh, int floorh){
   tx = tankx;
   ty = tanky;
   th = tankh;
   tw = tankw;
   fh = floorh;
 }
  void display(){ 
    fill(#ABCDEF);
    rect(tx,ty,tw,th);
    fill(#FEDCBA);
    rect(tx, ty + th - fh, tw,th);
    for(int i =0; i< animals.size(); i++){
     animals.get(i).display();
    }
  }
  void moveAnimals(){
    for(int i =0; i< animals.size(); i++){
     animals.get(i).swim();
    }
  }
  void addAnimal(Animal a){
    animals.add(a);
  }
  void addAnimal(int x, int y){
   Animal a = new Animal(x,y);
   animals.add(a);
  }
}
