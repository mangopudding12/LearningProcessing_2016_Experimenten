
class Timer
{ 
   float passedTime; 
   float startTime; 
   float totalTime; 
   float kleur1;
   float kleur2;
   float kleur3;
  
   Timer(float totalTime_) 
   { 
     totalTime = totalTime_; 
   }
   
   void startTimer() 
   { 
     startTime = millis();  
   } 
   
   boolean isFinished() 
   { 
      passedTime = millis() - startTime; 
      
      if (passedTime >= totalTime)
      { 
        return true; 
      }  else {
        
        // derde cijfer = begin kleur waarde
        // vierde cijfer = eind kleur waarde 
        kleur1 = map(passedTime,0,totalTime,255,241);
        kleur2 = map(passedTime,0,totalTime,216,255);
        kleur3 = map(passedTime,0,totalTime,250,200);
        return false; 
      }
   }
}