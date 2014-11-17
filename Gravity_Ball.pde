float locX, locY;      //location
float velX, velY;      //velocity
float gravity;         //gravity
float accX;            //acceleration

int sz = 50;           //size of ball

void setup() {
  size(800,600);
  locX = width/2;
  locY = sz;
  velX = 5;
  velY = 1;
  gravity = 1;
  accX = 1;
}

void draw() {
  background(0);
  accX += velX;
  velY += gravity;
  locX += velX;
  locY += velY;
  ellipse(locX,locY,sz,sz);
  
  if(locY > height - sz/2){
    locY = (height - sz/2);
    velY *= -1;
  }
  if(locX > width - sz/2){
    locX = (width - sz/2);
    velX = -abs(velX);
  }
  if(locX < sz/2){
    locX = sz/2;
    velX = abs(velX);
  }
  if(locY < sz/2){
    locY = sz/2;
    velY *= -1;
  }
}

