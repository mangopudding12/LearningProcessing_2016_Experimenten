class Timer
{ 
   float passedTime; 
   float startTime; 
   float totalTime; 
  
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
         return false; 
      }
   }
}