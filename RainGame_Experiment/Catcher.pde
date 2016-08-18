
class Catcher 
{ 
  float radius;
  PVector location; 
  float afstand;
  
  Catcher(float radius_)
  {
    radius = radius_;
    location = new PVector(0,0);
  }
  
  boolean intersection(float x1, float x2 , float y1, float y2) 
  { 
    float dx = x1 - x2; 
    float dy = y1 - y2; 
    
    afstand = sqrt(dx*dx + dy*dy);
    
    if (afstand < radius)
    {
      println("intersection");
      return true;
    } else { 
      println("p");
      return false;
    }
  } 
  
  
  void setLocation (float x_,float y_) 
  {
    location = new PVector(x_,y_);
  }
  
  void display() 
  {  
      body(); 
      eyes();
      pupils();
      feet(); 
  }
  
  
  
  //--------------------- LichaamOnderdelen ---------------------------
  void eyes () 
  { 
      // left eye
      fill(#65169B);
      noStroke();
      ellipse(location.x-radius/3,location.y-radius/3,radius/2,radius/2);
      
      // Right eye
      fill(#65169B);
      noStroke();
      ellipse(location.x+radius/3,location.y-radius/3,radius/2,radius/2);
  }
  
  void pupils() 
  { 
     // left eye
      fill(#E0FA3D);
      noStroke();
      ellipse(location.x-radius/4,location.y-radius/3,radius/4,radius/4);
      
      // Right eye
      fill(#E0FA3D);
      noStroke();
      ellipse(location.x+radius/4,location.y-radius/3,radius/4,radius/4);
  } 
  
  void body()
  { 
      fill(#8BE017);
      noStroke();
      ellipse(location.x,location.y,radius,radius); 
  }
  
  void feet () 
  { 
    // Right feet 
    fill(#E0FA3D);
    noStroke();
    ellipse(location.x+radius/2.5,location.y+radius/2,radius/2,radius/4);
    
    // left feet 
    fill(#E0FA3D);
    ellipse(location.x-radius/2.5,location.y+radius/2,radius/2,radius/4);
  }
} 