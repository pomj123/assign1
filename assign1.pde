/* please implement your assign1 code in this file. */
PImage fighterImg;
PImage enemyImg;
PImage bg1Img;
PImage bg2Img;
PImage hpImg;
PImage treasureImg;
int hp;
int treasureX;
int treasureY;
int bg2Xa;
int bg2Xb;
int bg1Xa;
int bg1Xb;
int enemyX;
int enemyY;

void setup () {
  size(640,480) ;  // must use this size.
  // your code
  
  //load img
  fighterImg=loadImage("img/fighter.png");
  enemyImg=loadImage("img/enemy.png");
  bg1Img=loadImage("img/bg1.png");
  bg2Img=loadImage("img/bg2.png");
  hpImg=loadImage("img/hp.png");
  treasureImg=loadImage("img/treasure.png");
  
  bg2Xa=0;
  bg1Xa=640;
  bg2Xb=0;
  bg1Xb=640;
  
  hp=floor(random(0,201));
  enemyY=floor(random(50,421));
  treasureX=floor(random(0,601));
  treasureY=floor(random(50,421));
  
  
  //
  

  
}

void draw() {
  // your code
  
  //bg
  background(0); //bgCleard
  
  image(bg2Img,(bg2Xa % 1280)-1280,0);
  bg2Xa = bg2Xa + 1 ;
  
  image(bg1Img,(bg1Xa % 1280)-1280,0);
  bg1Xa = bg1Xa + 1 ;
  
  image(bg2Img,(bg2Xb % 1280),0);
  bg2Xb = bg2Xb + 1 ;
  
  image(bg1Img,(bg1Xb % 1280),0);
  bg1Xb = bg1Xb + 1 ;


  //fighter
  image(fighterImg,580,220);
  
  
  //hp
  fill(#ff0000);
  stroke(#ff0000);
  rect(20,15,hp,15);
  
  image(hpImg,10,10);
  
 
  //treasure
  image(treasureImg,treasureX,treasureY);
  
   
  //enemy
  image(enemyImg,enemyX%640,enemyY);
  enemyX=enemyX+5;
  
}
