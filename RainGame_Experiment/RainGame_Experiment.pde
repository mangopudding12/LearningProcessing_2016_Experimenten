
// Classes 
Catcher player;  
Timer timer; 
Raindrops[] raining = new Raindrops[200];

int totalrain; 
float radiusPlayer; 
boolean kleurplayer; 

void setup() 
{ 
   size(400,400); 
   smooth(); 
   noCursor();
   
   radiusPlayer = 40;
   totalrain = 0; 
   
   // Constructor from the classes 
   player = new Catcher(radiusPlayer);
   timer = new Timer(2000);
} 

void draw() 
{ 
  if (timer.isFinished() == true)
  { 
    background(timer.kleur1,timer.kleur2,timer.kleur3,10);
  } else { 
    background(timer.kleur1,timer.kleur2,timer.kleur3,10);
  }
  
  player.setLocation(mouseX,mouseY);

  if (totalrain < raining.length)
  { 
    raining[totalrain] = new Raindrops(random(10, width-10), random(radiusPlayer/6,10),radiusPlayer/4);
    totalrain += 1; 
  } else { 
    totalrain = 0; 
  } 


  for (int i = 0; i < totalrain; i++)
  { 
    raining[i].move();
    raining[i].OutofScreen();
    raining[i].Tijdelijkbounce();
    raining[i].displayRain();

    if (player.intersection(player.location.x,raining[i].location.x,player.location.y,raining[i].location.y,player.radius,raining[i].radius) == true)
    { 
        //player.display2();
        timer.startTimer();
        kleurplayer = true; 
    } else { 
        //player.display1();
        kleurplayer = false; 
    } 
  } 
  
  if (kleurplayer == true )
  { 
    player.display2();
  } else { 
    player.display1();
  }
  
  
} 