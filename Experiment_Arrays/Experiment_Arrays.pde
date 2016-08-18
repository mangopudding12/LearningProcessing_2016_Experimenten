
Dolfijn[]dolfijn = new Dolfijn[1500];
int radiuseffect; 

void setup() 
{
  size(400,400);
  
  for (int i = 0; i < dolfijn.length; i++) 
  {
    PVector locationn = new PVector(width/2,height/2);
   
    dolfijn[i] = new Dolfijn(locationn,i); 
  }
} 

void draw() 
{
  background(255);
  
   if (mousePressed == true)
   {
       if (radiuseffect < 300)
       {
          radiuseffect += 1;
       }
   } else { 
     
     if (radiuseffect > 0)
       {
          radiuseffect -= 1;
       }
   }
  
  
  noStroke();
  fill(#FFB908,40);
  ellipse(mouseX,mouseY,radiuseffect,radiuseffect);
  
  for (int i = 0; i < dolfijn.length; i++) 
  {
     PVector wind;
     float afstand = dolfijn[i].dist(dolfijn[i].location.x,dolfijn[i].location.y,mouseX,mouseY);
    
   
     if (afstand < radiuseffect/2 && dolfijn[i].location.x > dolfijn[i].radius + 15 && dolfijn[i].location.x < width - (dolfijn[i].radius + 15) && dolfijn[i].location.y < height - (dolfijn[i].radius + 15) && dolfijn[i].location.y > dolfijn[i].radius + 15)
     {
       dolfijn[i].velocity.mult(0); 
       wind = new PVector(random(-0.05,0.05),random(-0.05,0.05));
     } else {
       wind = new PVector(random(-0.5,0.5),random(-0.5,0.5));
     }

     dolfijn[i].bounce();
     dolfijn[i].addforce(wind);
     dolfijn[i].move();
     dolfijn[i].display();
  }
}