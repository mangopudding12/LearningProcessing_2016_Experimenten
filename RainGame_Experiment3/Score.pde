
class Score 
{ 
   int aantal;
   PVector location; 
   int hoogte; 
   int kleur; 
   boolean dood; 
  
   Score(int aantal_,float x_, float y_,int hoogte_) 
   { 
     location = new PVector(x_,y_); 
     aantal = aantal_; 
     hoogte = hoogte_; 
     kleur = 0; 
   } 
   
   void berekenscore(int getal) 
   { 
     if (aantal > 0)
     {
       aantal -= getal; 
       kleur += int (random(20,30));
       dood = false;
     } 
     
     if (aantal == 0)
     { 
       println("dood");
       dood = true;
     }
   } 
   
   void display() 
   { 
     fill(252,245-kleur,3);
     rect(location.x,location.y,aantal*40,hoogte);
   }
}