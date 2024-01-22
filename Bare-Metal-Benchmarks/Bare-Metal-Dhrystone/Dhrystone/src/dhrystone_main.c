// See LICENSE for license details.

//**************************************************************************
// Dhrystone bencmark
//--------------------------------------------------------------------------
//
// This is the classic Dhrystone synthetic integer benchmark.
//

#pragma GCC optimize ("no-inline")

#include "dhrystone.h"

#include <stdint.h>

#include "kprintf.h"


#include <alloca.h>

/* Global Variables: */

Rec_Pointer     Ptr_Glob,
                Next_Ptr_Glob;
int             Int_Glob;
Boolean         Bool_Glob;
char            Ch_1_Glob,
                Ch_2_Glob;
int             Arr_1_Glob [50];
int             Arr_2_Glob [50] [50];

Enumeration     Func_1 ();
  /* forward declaration necessary since Enumeration may not simply be int */

#ifndef REG
        Boolean Reg = false;
#define REG
        /* REG becomes defined as empty */
        /* i.e. no register variables   */
#else
        Boolean Reg = true;
#undef REG
#define REG register
#endif

Boolean		Done;

long            Begin_Time,
                End_Time,
                User_Time;
long            Microseconds,
                Dhrystones_Per_Second;

/* end of variables for time measurement */


static inline uintptr_t mycycle(void) {
    uintptr_t cycles;
    asm volatile ("csrr %0, 0xB00" : "=r" (cycles));
    return cycles;
}
#define NUM_COUNTERS 2
static uintptr_t counters[NUM_COUNTERS];
static char* counter_names[NUM_COUNTERS];

void setStats(int enable) {
    int i = 0;
#define READ_CTR(name, func) do { \
        while (i >= NUM_COUNTERS) ; \
        uintptr_t csr = func(); \
        if (!enable) { csr -= counters[i]; counter_names[i] = #name; } \
        counters[i++] = csr; \
    } while (0)

    READ_CTR(mcycle, mycycle);
    // Add similar line for 'minstret' if you have a corresponding function

#undef READ_CTR
}

int main (int argc, char** argv)
/*****/
  /* main program, corresponds to procedures        */
  /* Main and Proc_0 in the Ada version             */
{
        One_Fifty       Int_1_Loc;
  REG   One_Fifty       Int_2_Loc;
        One_Fifty       Int_3_Loc;
  REG   char            Ch_Index;
        Enumeration     Enum_Loc;
        Str_30          Str_1_Loc;
        Str_30          Str_2_Loc;
  REG   int             Run_Index;
  REG   int             Number_Of_Runs;

  /* Arguments */
  Number_Of_Runs = NUMBER_OF_RUNS;

  /* Initializations */

  Next_Ptr_Glob = (Rec_Pointer) alloca (sizeof (Rec_Type));
  Ptr_Glob = (Rec_Pointer) alloca (sizeof (Rec_Type));

  Ptr_Glob->Ptr_Comp                    = Next_Ptr_Glob;
  Ptr_Glob->Discr                       = Ident_1;
  Ptr_Glob->variant.var_1.Enum_Comp     = Ident_3;
  Ptr_Glob->variant.var_1.Int_Comp      = 40;
  strcpy (Ptr_Glob->variant.var_1.Str_Comp,
          "DHRYSTONE PROGRAM, SOME STRING");
  strcpy (Str_1_Loc, "DHRYSTONE PROGRAM, 1'ST STRING");

  Arr_2_Glob [8][7] = 10;
        /* Was missing in published program. Without this statement,    */
        /* Arr_2_Glob [8][7] would have an undefined value.             */
        /* Warning: With 16-Bit processors and Number_Of_Runs > 32000,  */
        /* overflow may occur for this array element.                   */

  kprintf("\n");
  kprintf("Dhrystone Benchmark, Version %s\n", Version);
  if (Reg)
  {
    kprintf("Program compiled with 'register' attribute\n");
  }
  else
  {
    kprintf("Program compiled without 'register' attribute\n");
  }
  kprintf("Using %s, HZ=%d\n", CLOCK_TYPE, HZ);
  kprintf("\n");

  Done = false;
  while (!Done) {
    kprintf("Trying %d runs through Dhrystone:\n", Number_Of_Runs);

    /***************/
    /* Start timer */
    /***************/

    setStats(1);
    Start_Timer();

    for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
    {

      Proc_5();  Done = false;
      Proc_4();
	/* Ch_1_Glob == 'A', Ch_2_Glob == 'B', Bool_Glob == true */
      Int_1_Loc = 2;
      Int_2_Loc = 3;
      strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 2'ND STRING");
      Enum_Loc = Ident_2;
      Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	/* Bool_Glob == 1 */
      while (Int_1_Loc < Int_2_Loc)  /* loop body executed once */
      {
	Int_3_Loc = 5 * Int_1_Loc - Int_2_Loc;
	  /* Int_3_Loc == 7 */
	Proc_7 (Int_1_Loc, Int_2_Loc, &Int_3_Loc);
	  /* Int_3_Loc == 7 */
	Int_1_Loc += 1;
      } /* while */
	/* Int_1_Loc == 3, Int_2_Loc == 3, Int_3_Loc == 7 */
      Proc_8 (Arr_1_Glob, Arr_2_Glob, Int_1_Loc, Int_3_Loc);
	/* Int_Glob == 5 */
      Proc_1 (Ptr_Glob);
      for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
			       /* loop body executed twice */
      {
	if (Enum_Loc == Func_1 (Ch_Index, 'C'))
	    /* then, not executed */
	  {
	  Proc_6 (Ident_1, &Enum_Loc);
	  strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 3'RD STRING");
	  Int_2_Loc = Run_Index;
	  Int_Glob = Run_Index;
	  }
      }
	/* Int_1_Loc == 3, Int_2_Loc == 3, Int_3_Loc == 7 */
      Int_2_Loc = Int_2_Loc * Int_1_Loc;
      Int_1_Loc = Int_2_Loc / Int_3_Loc;
      Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
	/* Int_1_Loc == 1, Int_2_Loc == 13, Int_3_Loc == 7 */
      Proc_2 (&Int_1_Loc);
	/* Int_1_Loc == 5 */

    } /* loop "for Run_Index" */

    /**************/
    /* Stop timer */
    /**************/

    Stop_Timer();
    setStats(0);

    User_Time = End_Time - Begin_Time;

    if (User_Time < Too_Small_Time)
    {
      kprintf("Measured time too small to obtain meaningful results\n");
      Number_Of_Runs = Number_Of_Runs * 10;
      kprintf("\n");
    } else Done = true;
  }

  kprintf("Final values of the variables used in the benchmark:\n");
  kprintf("\n");
  kprintf("Int_Glob:            %d\n", Int_Glob);
  kprintf("        should be:   %d\n", 5);
  kprintf("Bool_Glob:           %d\n", Bool_Glob);
  kprintf("        should be:   %d\n", 1);
  kprintf("Ch_1_Glob:           %c\n", Ch_1_Glob);
  kprintf("        should be:   %c\n", 'A');
  kprintf("Ch_2_Glob:           %c\n", Ch_2_Glob);
  kprintf("        should be:   %c\n", 'B');
  kprintf("Arr_1_Glob[8]:       %d\n", Arr_1_Glob[8]);
  kprintf("        should be:   %d\n", 7);
  kprintf("Arr_2_Glob[8][7]:    %d\n", Arr_2_Glob[8][7]);
  kprintf("        should be:   Number_Of_Runs + 10\n");
  kprintf("Ptr_Glob->\n");
  kprintf("  Ptr_Comp:          %d\n", (long) Ptr_Glob->Ptr_Comp);
  kprintf("        should be:   (implementation-dependent)\n");
  kprintf("  Discr:             %d\n", Ptr_Glob->Discr);
  kprintf("        should be:   %d\n", 0);
  kprintf("  Enum_Comp:         %d\n", Ptr_Glob->variant.var_1.Enum_Comp);
  kprintf("        should be:   %d\n", 2);
  kprintf("  Int_Comp:          %d\n", Ptr_Glob->variant.var_1.Int_Comp);
  kprintf("        should be:   %d\n", 17);
  kprintf("  Str_Comp:          %s\n", Ptr_Glob->variant.var_1.Str_Comp);
  kprintf("        should be:   DHRYSTONE PROGRAM, SOME STRING\n");
  kprintf("Next_Ptr_Glob->\n");
  kprintf("  Ptr_Comp:          %d\n", (long) Next_Ptr_Glob->Ptr_Comp);
  kprintf("        should be:   (implementation-dependent), same as above\n");
  kprintf("  Discr:             %d\n", Next_Ptr_Glob->Discr);
  kprintf("        should be:   %d\n", 0);
  kprintf("  Enum_Comp:         %d\n", Next_Ptr_Glob->variant.var_1.Enum_Comp);
  kprintf("        should be:   %d\n", 1);
  kprintf("  Int_Comp:          %d\n", Next_Ptr_Glob->variant.var_1.Int_Comp);
  kprintf("        should be:   %d\n", 18);
  kprintf("  Str_Comp:          %s\n",
                                Next_Ptr_Glob->variant.var_1.Str_Comp);
  kprintf("        should be:   DHRYSTONE PROGRAM, SOME STRING\n");
  kprintf("Int_1_Loc:           %d\n", Int_1_Loc);
  kprintf("        should be:   %d\n", 5);
  kprintf("Int_2_Loc:           %d\n", Int_2_Loc);
  kprintf("        should be:   %d\n", 13);
  kprintf("Int_3_Loc:           %d\n", Int_3_Loc);
  kprintf("        should be:   %d\n", 7);
  kprintf("Enum_Loc:            %d\n", Enum_Loc);
  kprintf("        should be:   %d\n", 1);
  kprintf("Str_1_Loc:           %s\n", Str_1_Loc);
  kprintf("        should be:   DHRYSTONE PROGRAM, 1'ST STRING\n");
  kprintf("Str_2_Loc:           %s\n", Str_2_Loc);
  kprintf("        should be:   DHRYSTONE PROGRAM, 2'ND STRING\n");
  kprintf("\n");


  Microseconds = ((User_Time / Number_Of_Runs) * Mic_secs_Per_Second) / HZ;
  Dhrystones_Per_Second = (HZ * Number_Of_Runs) / User_Time;

  kprintf("Microseconds for one run through Dhrystone: %ld\n", Microseconds);
  kprintf("Dhrystones per Second:                      %ld\n", Dhrystones_Per_Second);

  return 0;
}


Proc_1 (Ptr_Val_Par)
/******************/

REG Rec_Pointer Ptr_Val_Par;
    /* executed once */
{
  REG Rec_Pointer Next_Record = Ptr_Val_Par->Ptr_Comp;
                                        /* == Ptr_Glob_Next */
  /* Local variable, initialized with Ptr_Val_Par->Ptr_Comp,    */
  /* corresponds to "rename" in Ada, "with" in Pascal           */

  structassign (*Ptr_Val_Par->Ptr_Comp, *Ptr_Glob);
  Ptr_Val_Par->variant.var_1.Int_Comp = 5;
  Next_Record->variant.var_1.Int_Comp
        = Ptr_Val_Par->variant.var_1.Int_Comp;
  Next_Record->Ptr_Comp = Ptr_Val_Par->Ptr_Comp;
  Proc_3 (&Next_Record->Ptr_Comp);
    /* Ptr_Val_Par->Ptr_Comp->Ptr_Comp
                        == Ptr_Glob->Ptr_Comp */
  if (Next_Record->Discr == Ident_1)
    /* then, executed */
  {
    Next_Record->variant.var_1.Int_Comp = 6;
    Proc_6 (Ptr_Val_Par->variant.var_1.Enum_Comp,
           &Next_Record->variant.var_1.Enum_Comp);
    Next_Record->Ptr_Comp = Ptr_Glob->Ptr_Comp;
    Proc_7 (Next_Record->variant.var_1.Int_Comp, 10,
           &Next_Record->variant.var_1.Int_Comp);
  }
  else /* not executed */
    structassign (*Ptr_Val_Par, *Ptr_Val_Par->Ptr_Comp);
} /* Proc_1 */


Proc_2 (Int_Par_Ref)
/******************/
    /* executed once */
    /* *Int_Par_Ref == 1, becomes 4 */

One_Fifty   *Int_Par_Ref;
{
  One_Fifty  Int_Loc;
  Enumeration   Enum_Loc;

  Int_Loc = *Int_Par_Ref + 10;
  do /* executed once */
    if (Ch_1_Glob == 'A')
      /* then, executed */
    {
      Int_Loc -= 1;
      *Int_Par_Ref = Int_Loc - Int_Glob;
      Enum_Loc = Ident_1;
    } /* if */
  while (Enum_Loc != Ident_1); /* true */
} /* Proc_2 */


Proc_3 (Ptr_Ref_Par)
/******************/
    /* executed once */
    /* Ptr_Ref_Par becomes Ptr_Glob */

Rec_Pointer *Ptr_Ref_Par;

{
  if (Ptr_Glob != Null)
    /* then, executed */
    *Ptr_Ref_Par = Ptr_Glob->Ptr_Comp;
  Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
} /* Proc_3 */


Proc_4 () /* without parameters */
/*******/
    /* executed once */
{
  Boolean Bool_Loc;

  Bool_Loc = Ch_1_Glob == 'A';
  Bool_Glob = Bool_Loc | Bool_Glob;
  Ch_2_Glob = 'B';
} /* Proc_4 */


Proc_5 () /* without parameters */
/*******/
    /* executed once */
{
  Ch_1_Glob = 'A';
  Bool_Glob = false;
} /* Proc_5 */
