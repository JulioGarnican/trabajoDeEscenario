color gris= color(131,119,119);
int space=0;
PImage godzilla;
PImage bloque;
PImage pibehuyendo;
float posx;
float speedX=7;
int direction=1;


 void setup(){
 size(500,500);
 godzilla= loadImage("godzilla.jpg");
 bloque=loadImage("bloque.png");
 bloque.resize(100,00);
 posx=0;
 pibehuyendo= loadImage("pibe.png");
 noStroke();
}

void draw(){
 background(0);
 tint(gris);
 image(godzilla,0,0,width-space,height-space);
 image(bloque,posx,50);
 posx+= speedX*direction;
 if(posx>=width-bloque.width||posx<=0){
   direction*= -1;
 
 }
image(pibehuyendo,mouseX,mouseY,50, 50);

for(int suelo=10; suelo<=700; suelo+=20){
  for(int blo=5;blo<width;blo+=5);
 rect(width/400,height/1.5,suelo,suelo); 
 fill(#343E3A);
}


 
}
