/**************************************************************************
File:               evro_tcp_evro_tcp_mts_inp_reg.h
Author:             Umputun
Creation date:      16/02/2013 - 20:17
Device name:        MTS_INP_REG
***************************************************************************/

#ifndef _EVRO_TCP_EVRO_TCP_MTS_INP_REG_H /* nested Headers management */
#define _EVRO_TCP_EVRO_TCP_MTS_INP_REG_H

/* prototypes */

typSTATUS  evro_tcp_evro_tcp_IosInit
   (
   strRtIoDrv* pRtIoDrv /* Run time io struct of the driver to init */
   );

void evro_tcp_evro_tcp_IosExit
   (
   strRtIoDrv* pRtIoDrv /* Run time io struct of the driver to exit */
   );

typSTATUS evro_tcp_evro_tcp_mts_inp_regIosOpen
   (
   strRtIoSplDvc* pvRtIoDvc /* Run time io struct of the device to open */
   );

void evro_tcp_evro_tcp_mts_inp_regIosClose
   (
   strRtIoSplDvc* pvRtIoDvc /* Run time io struct of the device to close */
   );

void evro_tcp_evro_tcp_mts_inp_regIosWrite
   (
   strRtIoSplDvc* pRtIoSplDvc /* Run time io struct of the device to write */
   );

void evro_tcp_evro_tcp_mts_inp_regIosCtl
   (
   uchar          cuSubFunct,   /* Sub function parameter */
   strRtIoSplDvc* pRtIoSplDvc,  /* Rt io struct of the spl dvc to control */
   uint16         huChanNum,    /* Channel number if any */
   void*          pvReserved    /* Reserved */
   );

typSTATUS evro_tcp_evro_tcp_IosMdf
   (
   uchar          cuSubFunc,    /* Sub function switch */
   strRtIoDrv*    pRtIoDrv,     /* Driver run time io struct */
   uint32         luMdfType,    /* On line modification types */
   void*          pvRtIoDvc     /* Reserved for future extensions */
   );

typSTATUS evro_tcp_evro_tcp_mts_inp_regIosMdf
   (
   uchar          cuSubFunc,  /* Sub function switch */
   strRtIoSplDvc* pRtIoSplDvc,/* Simple device run time io struct */
   uint32         luMdfType,  /* On line modification types */
   strDfIoSplDvc* pDfIoSplDvc,/* New simple device default struct */
   void*          pvOemSplDvc,/* New simple device OEM parameters */
   strDfIoChan*   pDfIoChan,  /* New first channel default struct */
   void*          pvOemChan   /* New first channel OEM parameters */
   );


#endif /* _EVRO_TCP_EVRO_TCP_MTS_INP_REG_H */

/* eof ********************************************************************/

