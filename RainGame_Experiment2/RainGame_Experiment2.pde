
// Classes 
Catcher player;  
Timer timer; 
Raindrops[] raining;

int totalrain; 
int getal;
float radiusPlayer; 
int indexRaindrops; 
boolean[] kleurplayer; 
boolean k;

void setup() 
{ 
   size(400,400); 
   smooth(); 
   noCursor();
   
   indexRaindrops = 200; 
   radiusPlayer = 40;
   totalrain = 0; 
   getal = 0; 
   
   raining = new Raindrops[indexRaindrops];
   kleurplayer = new boolean[indexRaindrops];
   
   // Constructor from the classes 
   player = new Catcher(radiusPlayer);
   timer = new Timer(1250);
   timer.startTimer();
} 

void draw() 
{ 
   background(241,255,200);
   
   // Player settings 
   player.setLocation(mouseX,mouseY);
   
   if (getal == totalrain)
   {
       player.display1();
   } 
  
   getal = 0; 
  
   // Timer settings 
   if (timer.isFinished() == true)
   { 
      // Raindrops settings  
      if (totalrain < raining.length)
      { 
          raining[totalrain] = new Raindrops(random(10,width-10),random(2,10),radiusPlayer/4);
          totalrain += 1; 
      } else { 
          totalrain = 0; 
      } 
      
      timer.startTimer(); // reset timer
   } 
  
  for (int i = 0; i < totalrain; i++)
  { 
    if (player.intersection(player.location.x,raining[i].location.x,player.location.y,raining[i].location.y,player.radius,raining[i].radius) == true)
    { 
           player.display2();
           raining[i].location.y = -1000; 
           raining[i].velocity.y = 0; 
    }  else { 
           getal ++; 
    }
    
     raining[i].move();
     raining[i].OutofScreen();
     raining[i].displayRain();
  }
} 