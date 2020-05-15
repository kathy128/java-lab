PImage[] gatitos = new PImage[3];
float u=1;
void setUp(){
gatitos[0] = loadImage("cat1.png");
gatitos[1] = loadImage("cat2.png");
gatitos[2] = loadImage("cat3.png");
}
void Draw(){
  background(500,500);
  for (int i=0; i<=2; i++){
    image(gatitos[i],90+u,90);}
    u+=3;
}