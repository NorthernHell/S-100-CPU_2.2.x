/**************************************************************************
File:               acos_lreal.h
Author:             ICS Triplex ISaGRAF
Creation date:      20/03/2007 - 18:31
POU name:           ACOS_LREAL
***************************************************************************
Attached documents: 

***************************************************************************
Description:        

***************************************************************************
Modifications: (who / date / description)

***************************************************************************/

#ifndef _ACOS_LREAL_H /* nested Headers management */
#define _ACOS_LREAL_H

/* function prototype */

ISANDTDLL void acos_lrealUsfCall
   (
   void*       pvBfData,     /* In: Data */
   strParamVa* InParam,      /* In: Input parameters */
   uchar       cuNbInParam,  /* In: Number of input parameters */
#ifdef ITGTDEF_NEW_ARRAY_AND_FB
   strParamVa* OutParam,     /* In: Output parameter */
   void*       pvAdi         /* In: Pointer to ADI table */
#else
   strParamVa* OutParam      /* In: Output parameter */
#endif /* ITGTDEF_NEW_ARRAY_AND_FB */
   );

#endif /* _ACOS_LREAL_H */

/* eof ********************************************************************/

