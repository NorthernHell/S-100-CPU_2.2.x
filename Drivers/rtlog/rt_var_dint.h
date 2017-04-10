/**************************************************************************
File:               rt_var_dint.h
Author:             Alex
Creation date:      19/01/2006 - 16:29
POU name:           rt_var_dint
***************************************************************************/

#ifndef _RT_VAR_DINT_H /* nested Headers management */
#define _RT_VAR_DINT_H

/* function prototype */

void rt_var_dintUsfCall
   (
   void*       pvBfData,     /* In: Data */
   strParamVa* InParam,      /* In: Input parameters */
   uchar       cuNbInParam,  /* In: Number of input parameters */
   strParamVa* OutParam      /* In: Output parameter */
   );

#endif /* _RT_VAR_DINT_H */

/* eof ********************************************************************/

