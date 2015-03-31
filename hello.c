#include <stdio.h>

/* Include the haskell foreign language interface header */
#include "HsFFI.h"

/* Include the header file that declares the haskell function we want
   to use.  This file Fibs_stub.h gets generated when compiling
   Fibs.hs */
#ifdef __GLASGOW_HASKELL__
#include "Fibs_stub.h"
#endif

int main(int argc, char *argv[])
{
  int i = 0;

  // initialize the haskell runtime environment
  hs_init(&argc, &argv);

  // call haskell functions
  printf("Hallo Welt\n");
  for (i = 1; i <= 10;i++) {
    printf("%i : %i\n",i,getFib(i));
  }

  // shut down the haskell runtime environment
  hs_exit();
  
  return 0;
}
