
class Raindrops 
{ 
  PVector location; 
  PVector velocity; 
  float radius; 
  
  Raindrops (float x_, float y_, float radius_) 
  { 
     location = new PVector(x_,y_);
     radius = radius_;
     velocity = new PVector(random(-3,3),random(2,4));
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
          //println("onderaan scherm");
          return true; 
      } else  { 
          return false; 
      }
  }
  
  void Tijdelijkbounce() 
  { 
    if (location.x - radius/2 < 0 || location.x + radius/2 > width)
    {
      velocity.x = velocity.x * -1;
    }
    
    if (location.y - radius/2 < 0 || location.y + radius/2 > height)
    {
      velocity.y = velocity.y * -1;
    }
  } 
} 