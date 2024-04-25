color gris= color(131,119,119);
int space=0;
PImage godzilla;
PImage bloque;
PImage pibehuyendo;
float posx;
float speedX=7;
int direction=2;
PImage suelo;
int spacio=400;
int x=200;
int y=380;


 void setup(){
 size(500,500);
 godzilla= loadImage("godzilla.jpg");
 bloque=loadImage("bloque.png");
 bloque.resize(100,00);
 posx=0;
 pibehuyendo= loadImage("pibe.png");
 pibehuyendo.resize(100,00);
 suelo= loadImage( "grass.png");
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
 
image(pibehuyendo, x,y,50, 50);
 if (keyPressed &&(key== CODED)){
   if (keyCode==LEFT){
     x-=3;
   }else if (keyCode== RIGHT){
     x+=3;
   }
   if (keyCode ==UP){
     y-=3;
   } else if(keyCode==  DOWN){
     y+=3;
   }
   
   image(pibehuyendo, x,y,50, 50);
 }
for(int k=20;k<=40;k+=10){
  image(suelo,space,600,width + spacio/2, height -spacio*2);
 
}
}

 
