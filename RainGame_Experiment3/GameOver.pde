
class Gameover
{ 
   PFont f;
   PFont ff;
   PVector location;
  
   Gameover(float x_,float y_)
   { 
     f = loadFont("AlphabitsSquared-48.vlw");
     ff = loadFont("GungsuhChe-48.vlw");
     textAlign(CENTER, CENTER);
     
     location = new PVector(x_,y_);
   }
  
   void display() 
   { 
     fill(#CE004F);
     textFont(f);
     textSize(36);
     text("Game Over", location.x, location.y);
     
     textFont(ff);
     textSize(18);
     text("Restart de game door op de muis te klikken", location.x, location.y+40);
   } 
}