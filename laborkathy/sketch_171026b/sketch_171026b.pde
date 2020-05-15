float altura=0,i=0, m=0,x=0,p=470,h=200,o=323,n=11,q=100,j=60, y=150,w=0, t=60, z=240, a=40, b=100, c=50, d=120, f=55, g=200;
PImage gato,fondo,sushi,murci,plata;
boolean solto=false, cayo=false, llego=false,inicio=true;
void setup(){
  fondo=loadImage("lacabaña.jpg");
  plata=loadImage("plataforma.png");
  sushi=loadImage("sushi.png");
 murci=loadImage("murci.png");
 murci.resize(100,100);
size(736,700);
 stroke (225);
  smooth();
}
void draw(){
image(fondo,0,0);
image(plata,100,524,100,200);
image(plata,400,524,100,200);
gato=loadImage("cat1.png");
gato.resize(60,60);
image(gato, 120+m,p);
if(inicio==true || llego==true){
if(solto==true){  
pushMatrix();
translate(173,524);
rotate(i);
//100,658
if(i<=PI/2){
i+=0.02;
}else cayo=true;
rect(0,0,-3,-altura);
popMatrix();
}else{ 
rect(173,527,3,-altura);
}
if (cayo==true&&llego==false){
caminando();

}  
}
if(llego==true){
  if(120+m<350||m+120>450){
 p=p+2;
 if(p>=660){
 p=660;
 }w=3;
  }
  
  image(murci, j,y-100);
if (j > width-20){
  j -= j ;
}else if (j < width-10){
  j = j + 5;
}
image(murci, t,z-100);
if (t > width-20){
  t -= t ;
}else if (t < width-10){
  t = t + 3;
}
image(murci, a,b+200);
if (a > width-20){
  a -= a ;
}else if (a < width-10){
  a = a + 6;
}
image(murci, c,d);
if (c > width-20){
  c -= c ;
}else if (c < width-10){
  c = c + 8;
}
image(murci, f,g);
if (f > width-20){
  f -= f ;
}else if (f < width-10){
  f = f + 2;
}  
  image(sushi,400,h);
  sushi.resize(60,60);
   image(sushi,400,o);
  sushi.resize(60,60);
    image(sushi,400,n);
    sushi.resize(60,60);
     image(sushi,400,q);
    sushi.resize(60,60);
    w=5;
  if (keyPressed && key == CODED&& w==5){  
      if (keyCode == UP){
    p = p - 3;
    println(p);
    if(p==323){
      o=1000;}
      if(p==200){
      h=1000;}
      if(p==101){
      q=1000;}
      if(p==8){
      n=1000;
    } 
  }
    else if (keyCode == DOWN){
    p = p + 3;
    if(p>=470){
    p=470;}
    }
      }
}
}
void keyPressed(){
  if(llego==false ){
  if(solto==false){
  if(key==' '){
    altura+=10;  
  }
  }
  }
}
void keyReleased(){
  if (key==' '){
  solto=true;  
  } 
}
void caminando(){
  m+=3; 
  if(m>=altura){
  llego=true;
  w=5;
  }
}