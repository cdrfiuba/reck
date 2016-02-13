/*
  R.E.C.K.  Robot Eyes Caterpillar Kinect
  Copyright (c) 2016 Club de Robótica - FIUBA

  main.c
    Entrada del sistema R.E.C.K.
*/

#include "main.h"

namespace RECK
{

void Init()     // Aquí se initializan los distintos componentes
{

}

void CleanUp()  // Aquí se limpian los procesos y se libera la memoria
{

}

void Loop()   // Ciclo principal del sistema
{
  bool gDone = false;
  
  while(!gDone)
  {
    gDone = true;
  }
  
}

int main(int argc, char **argv)
{
  Init();
  Loop();
  CleanUp();

  return 0;
}

}
