/**************************************************************************
File:               modbus_rtu_coil_o_.c
Author:             Umputun
Creation date:      20/02/2013 - 12:46
Device name:        MODBUS_RTU_COIL_O_
***************************************************************************/

#include <dsys0def.h>
#include <dios0def.h>
#include <modbus_rtu_coil_o_.h>
#include <modbus/modbus.h>
extern modbus_mapping_t *mb_mapping_rtu;
/* OEM Parameters */



/****************************************************************************
function    : _evro_rtus_evro_rtusmodbus_rtu_coil_o_IosOpen
description : Level 1 device Open function
parameters  :
   (input) strRtIoSplDvc* pvRtIoDvc :  Run time io struct of the device to open
return value: typSTATUS :  0 if successful, BAD_RET if error
warning     : Returning with an error stops the kernel resource starting
****************************************************************************/

typSTATUS _evro_rtus_evro_rtusmodbus_rtu_coil_o_IosOpen
(
    strRtIoSplDvc* pvRtIoDvc /* Run time io struct of the device to open */
)
{
    /*
     * Basically, for a complex device the driver can browse all
     * simple devices and perform corressponding initializations.
     * For a simple device it just initializes it.
     */
    printf("MODBUS RTU SERVER coil_o INIT\n");
    pvRtIoDvc->luUser = 1;
    return (0);
}

/****************************************************************************
function    : _evro_rtus_evro_rtusmodbus_rtu_coil_o_IosClose
description : Level 1 device Close function
parameters  :
   (input) strRtIoSplDvc* pvRtIoDvc :  Run time io struct of the device to close
return value: None
warning     :
****************************************************************************/

void _evro_rtus_evro_rtusmodbus_rtu_coil_o_IosClose
(
    strRtIoSplDvc* pvRtIoDvc /* Run time io struct of the device to close */
)
{
    printf("MODBUS RTU SERVER coil_o CLOSE\n");
}

/****************************************************************************
function    : _evro_rtus_evro_rtusmodbus_rtu_coil_o_IosWrite
description : Simple device Write function
parameters  :
   (input) void* pvRtIoDvc :  Run time io struct of the device to write
return value: None
warning     :
****************************************************************************/

void _evro_rtus_evro_rtusmodbus_rtu_coil_o_IosWrite
(
    strRtIoSplDvc* pRtIoSplDvc /* Run time io struct of the device to write */
)
{
    strRtIoChan*     pChannel;
    strDfIoSplDvc*   pStaticDef;
    uint16           nbChannel;
    uint16           nbIndex;

    uchar*           pPhyData;      /* Physical value */
    uchar*           pLogData;      /* Logic Value */
    uchar            byElecData;    /* Electrical value ('1' or '0') */
    int              okChange;      /* indicate one of the channel has changed */
    pStaticDef =  pRtIoSplDvc->pDfIoSplDvc;
    nbChannel  =  pStaticDef->huNbChan;
    pChannel   =  pRtIoSplDvc->pRtIoChan;

    okChange = 0;
    /* Update all channels */
    for( nbIndex = 0; nbIndex < nbChannel; nbIndex++)
    {
        pPhyData = (uchar*)(pChannel->pvKerPhyData);
        pLogData = (uchar*)(pChannel->pvKerData);

        /* update the channel if not locked  */
        if(!(pChannel->cuIsLocked))
        {
            /* if value has changed or 1rst cycle */
            if( *pLogData != *pPhyData || pRtIoSplDvc->luUser)
            {
                okChange = 1;
            }
            *pPhyData  = *pLogData;
            byElecData = *pPhyData;

            if ((pChannel->luCnvMult) != 1)    /* If the output is reversed */
            {
                if (*pLogData) byElecData = 0;
                else           byElecData = 1;
            }
            if((uchar*)(pChannel->pfnCnvCall) != 0)
            {
                pChannel->pfnCnvCall( ISA_IO_DIR_OUTPUT, &byElecData, &byElecData);
            }
        }
        else
        {
            byElecData = *pPhyData; /* previous value */
        }
        //
        if (okChange || pRtIoSplDvc->luUser)
        {
            if (byElecData) mb_mapping_rtu->tab_bits[nbIndex] = 1;
            else            mb_mapping_rtu->tab_bits[nbIndex] = 0;
        }
        //

        pChannel++;
    }
    pRtIoSplDvc->luUser = 0; /* first call to Write has been done */
    ///////
}

/****************************************************************************
function    : _evro_rtus_evro_rtusmodbus_rtu_coil_o_IosCtl
description : Simple device Control function
parameters  :
   (input) uchar cuSubFunct :          Sub function parameter.
   (input) strRtIoSplDvc* pRtIoSplDvc: Rt io struct of the spl dvc to control.
   (input) uint16 huChanNum :          Channel number if any.
   (input) void* pvReserved :          Reserved.
return value: None
warning     :
****************************************************************************/

void _evro_rtus_evro_rtusmodbus_rtu_coil_o_IosCtl
(
    uchar          cuSubFunct,   /* Sub function parameter */
    strRtIoSplDvc* pRtIoSplDvc,  /* Rt io struct of the spl dvc to control */
    uint16         huChanNum,    /* Channel number if any */
    void*          pvReserved    /* Reserved */
)
{
    /*
     * cuSubFunct parameter gives a function code.
     * An important one is ISA_IO_CTL_CHANOUTFORCE to force the output
     *  specified by huChanNum.
     * In this case a typical implementation is:
        - if cuSubFunct equal ISA_IO_CTL_CHANOUTFORCE
           - If a conversion is required, convert physical data (pvKerPhyData)
             The info is in channel structures in following fields:
                cuCnvGainTyp != 0 ==> Gain/Offset to applied
                pfnCnvCall != 0   ==> 'C' conversion to applied
           - Apply just computed electrical value to the actuator
     */
    uchar*        pPhyData;      /* Physical value */
    strRtIoChan*  pChannel;
    uchar         byElecData;    /* Electrical value ('1' or '0') */
    pChannel  = pRtIoSplDvc->pRtIoChan;
    pChannel += huChanNum;
    pPhyData  = (uchar*)(pChannel->pvKerPhyData);

    switch( cuSubFunct)
    {
    case ISA_IO_CTL_CHANLOCK:
        break;
    case ISA_IO_CTL_CHANUNLOCK:
        break;
    case ISA_IO_CTL_CHANOUTFORCE:
        byElecData = *pPhyData;
        /* convert with Gain and/or conversion function */
        if ((pChannel->luCnvMult) != 1)   /* If the output is reversed */
        {
            if (*pPhyData) byElecData = 0;
            else           byElecData = 1;
        }
        if((uchar*)(pChannel->pfnCnvCall) != 0)
        {
            pChannel->pfnCnvCall( ISA_IO_DIR_OUTPUT, &byElecData, &byElecData);
        }
        break;
    }
}
/* eof ********************************************************************/

