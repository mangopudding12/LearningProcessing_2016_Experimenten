
class Raindrops 
{ 
  PVector location; 
  PVector velocity; 
  float radius; 
  
  Raindrops (float x_, float y_, float radius_) 
  { 
     location = new PVector(x_,y_);
     radius = radius_;
     velocity = new PVector(random(-3,3),random(1.5,5));
  } 
  
  void move() 
  {
    location.y = location.y + velocity.y;
  }
  
  void displayRain() 
  { 
    for (int i = 0; i < radius; i++)
    {
        fill(0);
        noStroke();
        smooth();
        ellipse(location.x,location.y+i*1.3,i,i);
    }
  } 
  
  boolean OutofScreen()
  { 
      if (location.y + radius/2 > height) 
      { 
          return true; 
      } else  { 
          return false; 
      }
  }
}