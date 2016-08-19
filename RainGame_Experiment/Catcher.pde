
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
  
  boolean intersection(float x1, float x2 , float y1, float y2,float radius1,float radius2) 
  { 
    float dx = x1 - x2; 
    float dy = y1 - y2; 
    
    afstand = sqrt(dx*dx + dy*dy);
    
    if (afstand < (radius1/2) + (radius2/2))
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
  
  void display1() 
  {  // groene player
      fill(#8BE017);
      noStroke();
      body(); 
      
      fill(#65169B);
      eyes();
      
      fill(#E0FA3D);
      pupils();
      
      fill(#E0FA3D);
      feet(); 
  }
  
  void display2() 
  {  // Roze player
      fill(#D10DA3);
      noStroke();
      body(); 
      
      fill(#09E1EA);
      eyes();
      
      fill(#FFE600);
      pupils();
      
      fill(#09E1EA);
      feet(); 
  }
  
  
  
  //--------------------- LichaamOnderdelen ---------------------------
  void eyes () 
  { 
      // left eye
      ellipse(location.x-radius/3,location.y-radius/3,radius/2,radius/2);
      
      // Right eye
      ellipse(location.x+radius/3,location.y-radius/3,radius/2,radius/2);
  }
  
  void pupils() 
  { 
     // left eye
      ellipse(location.x-radius/4,location.y-radius/3,radius/4,radius/4);
      
      // Right eye
      ellipse(location.x+radius/4,location.y-radius/3,radius/4,radius/4);
  } 
  
  void body()
  { 
      ellipse(location.x,location.y,radius,radius); 
  }
  
  void feet () 
  { 
    // Right feet 
    ellipse(location.x+radius/2.5,location.y+radius/2,radius/2,radius/4);
    
    // left feet 
    ellipse(location.x-radius/2.5,location.y+radius/2,radius/2,radius/4);
  }
} 