
Catcher player; 
Raindrops vijand; 
float radiusPlayer; 

void setup() 
{ 
   size(400,400); 
   smooth(); 
   noCursor();
   
   radiusPlayer = 40;
   
   player = new Catcher(radiusPlayer);
   vijand = new Raindrops(random(10,width-10), random(10,height-10),radiusPlayer);
} 

void draw() 
{ 
  background(#EBFFBF,10);
  
  player.setLocation(mouseX,mouseY);
  player.display(); 
  player.intersection(mouseX,vijand.location.x,mouseY,vijand.location.y);
  vijand.Tijdelijkbounce();
  vijand.display(); 
  vijand.move();
} 