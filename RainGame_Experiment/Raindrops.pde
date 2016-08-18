
class Raindrops 
{ 
  PVector location; 
  PVector velocity; 
  float radius; 
  
  Raindrops (float x_, float y_, float radius_) 
  { 
     location = new PVector(x_,y_);
     radius = radius_;
     velocity = new PVector(random(-5,5),random(-5,5));
  } 
  
  void move() 
  {
    location.add(velocity);
  }
  
  void display() 
  { 
    fill(#4F9BF5);
    ellipse(location.x,location.y,radius/4,radius/3);
  } 
  
  void Tijdelijkbounce() 
  { 
    if (location.x - radius/6 < 0 || location.x + radius/6 > width)
    {
      velocity.x = velocity.x * -1;
    }
    
    if (location.y - radius/5 < 0 || location.y + radius/5 > height)
    {
      velocity.y = velocity.y * -1;
    }
  } 
} 