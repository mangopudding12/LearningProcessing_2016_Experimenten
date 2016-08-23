
// Classes 
Catcher player;  
Timer timer; 
Score score; 
Raindrops[] raining;
Gameover gameover; 

int totalrain; 
int getal;
float radiusPlayer; 
int indexRaindrops; 
boolean[] kleurplayer; 
boolean gameOver;

void setup() 
{ 
   size(400,400); 
   smooth(); 
   noCursor();
   
   indexRaindrops = 500; 
   radiusPlayer = 40;
   totalrain = 0; 
   getal = 0; 
   gameOver = false; 
   
   raining = new Raindrops[indexRaindrops];
   kleurplayer = new boolean[indexRaindrops];
   
   // Constructor from the classes 
   player = new Catcher(radiusPlayer);
   timer = new Timer(1250);
   score = new Score(2,0,height-15,15);
   gameover = new Gameover(width/2,150); 
   
   timer.startTimer();
} 

void draw() 
{ 
   background(241,255,200);
   
   score.display();
   
   // Player settings 
   player.setLocation(mouseX,mouseY);
   
   if (getal == totalrain)
   {
       player.display1();
   } 
  
   getal = 0; 
   
   if (gameOver == false)
   {
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
         
         if (raining[i].OutofScreen() == true)
         { 
            raining[i].location.y = -1000; 
            raining[i].velocity.y = 0; 
            
            score.berekenscore(1);
            
            if (score.dood == true)
            {
              gameOver = true;
            }
         }
         
         raining[i].displayRain();
      }
   } else { 
     player.display1();
     gameover.display(); 
     
     if (mousePressed == true)
     { 
        // alles resetten als je de mouse klikt 
        score.aantal = 10; 
        score.kleur = 0; 
        totalrain = 0; 
        timer.startTimer(); 
        
        gameOver = false; 
        println(gameOver);
     } 
   }
} 


 