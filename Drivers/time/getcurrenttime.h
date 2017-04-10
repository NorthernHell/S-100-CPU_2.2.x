/**************************************************************************
File:               getcurrtime.h
Author:             Lipovets
Creation date:      08/04/2008 - 20:03
POU name:           getCurrTime
***************************************************************************/

#ifndef _GETCURRTIME_H /* nested Headers management */
#define _GETCURRTIME_H

/* prototypes */

void getcurrenttimeFblClassInit
   (
   uint16 huNbInst /* Number of instances */
   );
void getcurrenttimeFblClassExit
   (
   uint16 huNbInst /* Number of instances */
   );
void getcurrenttimeFblInstInit
   (
   void* pvBfData, /* In: Data */
   strParamVa* FblInst /* In: Function Block instance */
   );
void getcurrenttimeFblInstExit
   (
   void* pvBfData, /* In: Data */
   strParamVa* FblInst /* In: Function Block instance */
   );
void getcurrenttimeFblCall
   (
   void* pvBfData, /* In: Data */
#ifdef ITGTDEF_NEW_ARRAY_AND_FB
   strParamVa* FblInst, /* In: Function Block instance */
   void* pvAdi          /* In: Pointer to ADI table */
#else
   strParamVa* FblInst /* In: Function Block instance */
#endif /* ITGTDEF_NEW_ARRAY_AND_FB */
   );

#endif /* _GETCURRTIME_H */

/* eof ********************************************************************/

