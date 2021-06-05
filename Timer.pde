class Timer
{
  int startTime;
  int interval;
  float totalTime;

  Timer(int timeInterval) {
    interval = timeInterval;
  }

  float gettime()
  {
    totalTime = millis()/1000;
   return (totalTime);
  }
  
  void start()
  {
    startTime = millis();
  }
  
  boolean complete() {
    int elapsedTime = millis() - startTime;
    if ( elapsedTime > interval) {
      return true;
    }
    else 
    {
      return false;
    }
  }
}
