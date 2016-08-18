
class Dolfijn 
{
   PVector location; 
   PVector acceleration; 
   PVector velocity; 
   float topsnelheid; 
   int radius; 
  
   Dolfijn(PVector location_, int radius_) 
   { 
       topsnelheid = 2; 
       location = location_;
       radius = radius_; 
       
       if (radius > 15)
       {
          radius = int(random(2,15)); 
       }

      
       velocity = new PVector (0,0);
       acceleration = new PVector(0,0);
   }
   
   void addforce(PVector force) 
   {
     acceleration.add(force);
   }
   
   void move() 
   {
       velocity.add(acceleration); 
       location.add(velocity);   
       
       velocity.limit(topsnelheid);
       acceleration.mult(0);
   }
   
   void bounce()
   {
      if (location.x < (radius/2) || location.x > width-(radius/2))
      {
          velocity.mult(-1);
      }
      
      if (location.y < (radius/2) || location.y > height-(radius/2))
      {
         velocity.mult(-1);
      }
   }
     
   void display() 
   {
     stroke(1);
     fill(location.x,location.y,location.x);
     ellipse(location.x,location.y,radius,radius); 
   }
   
   float dist(float x1,float y1, float x2, float y2) 
   {
       float dx = x1 - x2; 
       float dy = y1 - y2; 
       float d = sqrt(dx*dx+dy*dy);
       return d; 
   }
}