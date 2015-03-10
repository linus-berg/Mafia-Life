// ML_Server.cpp : Defines the exported functions for the DLL application.
//

#include "stdafx.h"
#include "ML_Functions.h"


namespace {
  ML *ML_F;
};

extern "C"
{
  __declspec (dllexport) void __stdcall RVExtension(char *output, 
                                                    int outputSize, 
                                                    const char *function);
}

void __stdcall RVExtension(char *output, int outputSize, const char *function)
{
  outputSize -= 1;
  ML_F->CallExtension(output, outputSize, function);
}