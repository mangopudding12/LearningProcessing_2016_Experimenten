
// Classes 
Catcher player; 
Raindrops vijand; 
Timer timer; 

float radiusPlayer; 

void setup() 
{ 
   size(400,400); 
   smooth(); 
   noCursor();
   
   
   radiusPlayer = 40;
   
   // Constructor from the classes 
   player = new Catcher(radiusPlayer);
   vijand = new Raindrops(random(10,width-10), random(10,height-10),radiusPlayer/4);
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

  // Change the color of the player when hitting a enemy
  if (player.intersection(player.location.x,vijand.location.x,player.location.y,vijand.location.y,player.radius,vijand.radius) == true)
  { 
    player.display2();
    timer.startTimer();
  } else { 
    player.display1();
  } 

  player.setLocation(mouseX,mouseY);
  vijand.Tijdelijkbounce();
  vijand.move();
  vijand.displayRain();
} 