
class Raindrops 
{ 
  PVector location; 
  PVector velocity; 
  float radius; 
  
  Raindrops (float x_, float y_, float radius_) 
  { 
     location = new PVector(x_,y_);
     radius = radius_;
     velocity = new PVector(random(-3,3),random(-3,3));
  } 
  
  void move() 
  {
    location.add(velocity);
  }
  
  void displayRain() 
  { 
    fill(255);
    stroke(1);
    strokeWeight(2);
    smooth();
    ellipse(location.x,location.y,radius,radius);
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