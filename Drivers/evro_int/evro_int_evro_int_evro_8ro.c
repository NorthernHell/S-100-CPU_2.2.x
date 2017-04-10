/**************************************************************************
File:               evro_int_evro_int_evro_8ro.c
Author:             Umputun
Creation date:      21/07/2012 - 14:25
Device name:        EVRO_8ro
***************************************************************************/

#include <dsys0def.h>
#include <dios0def.h>
#include <evro_int_evro_int_evro_8ro.h>
#include "modbus/modbus.h"
/* OEM Parameters */

typedef struct _tag_strEvro_8ro
{
    int32  ID;   /* Node ID */
    int32  NCOM;   /* COM port number */
} strOemParam;


/****************************************************************************
function    : evro_int_evro_int_evro_8roIosOpen
description : Level 1 device Open function
parameters  :
   (input) strRtIoSplDvc* pvRtIoDvc :  Run time io struct of the device to open
return value: typSTATUS :  0 if successful, BAD_RET if error
warning     : Returning with an error stops the kernel resource starting
****************************************************************************/

typSTATUS evro_int_evro_int_evro_8roIosOpen
(
    strRtIoSplDvc* pRtIoSplDvc /* Run time io struct of the device to read */
)
{   /*
    * Basically, for a complex device the driver can browse all
    * simple devices and perform corressponding initializations.
    * For a simple device it just initializes it.
    */
    strRtIoCpxDvc *cpxDev=(strRtIoCpxDvc *)pRtIoSplDvc->pvRtIoLevBack;
    strOemParam *oemCPar=(strOemParam *)cpxDev->pvOemParam;
    printf("EVRO 8KuKu epta init\n");
    modbus_t *ctx;
    if (oemCPar->NCOM==1) {ctx = modbus_new_rtu("/dev/ttySAC0", 460800, 'N', 8, 1);}
    if (oemCPar->NCOM==2) {ctx = modbus_new_rtu("/dev/ttySAC1", 460800, 'N', 8, 1);}
    if (oemCPar->NCOM==3) {ctx = modbus_new_rtu("/dev/ttySAC2", 460800, 'N', 8, 1);}
    int rc;
    struct timeval response_timeout;
    response_timeout.tv_sec = 0;
    response_timeout.tv_usec = 20000;
    modbus_set_slave(ctx, oemCPar->ID);
    if (modbus_connect(ctx) == -1)
    {
       // printf("Connexion failed: \n");
        modbus_free(ctx);
    }
    else
    {
        modbus_set_response_timeout(ctx, &response_timeout);

        if (rc == -1)
        {
            cpxDev->luUser =0;
        }
        else
        {
            cpxDev->luUser =1;
        }
        modbus_close(ctx);
        modbus_free(ctx);
    }

    return (0);
}

/****************************************************************************
function    : evro_int_evro_int_evro_8roIosClose
description : Level 1 device Close function
parameters  :
   (input) strRtIoSplDvc* pvRtIoDvc :  Run time io struct of the device to close
return value: None
warning     :
****************************************************************************/

void evro_int_evro_int_evro_8roIosClose
(
    strRtIoSplDvc* pRtIoSplDvc /* Run time io struct of the device to read */
)
{
    printf("EVRO 8RO Exit\n");
}

/****************************************************************************
function    : evro_int_evro_int_evro_8roIosWrite
description : Simple device Write function
parameters  :
   (input) void* pvRtIoDvc :  Run time io struct of the device to write
return value: None
warning     :
****************************************************************************/

void evro_int_evro_int_evro_8roIosWrite
(
    strRtIoSplDvc* pRtIoSplDvc /* Run time io struct of the device to write */
)
{
    /*
     * pRtIoSplDvc parameter allows you to access to strRtIoChan structure
     *  of information for each channel.
     * If required you can then also get strDfIoChan structure.
     *
     * Typical implementation for each channel:
     * (variables refer to structure fields):
         - If not locked (cuIsLocked)
            - Update physical data (pvKerPhyData) with logical data (pvKerData)
            - If a conversion is required, convert the data
              The info is in channel structures in following fields:
                 cuCnvGainTyp != 0 ==> Gain/Offset to applied
                 pfnCnvCall != 0   ==> 'C' conversion to applied
            - Apply just computed electrical value to the actuator
     */

    /*
     * To improve performances:
     * - The number of locked channels is given to avoid testing each of them
     *   when no channels are locked or when all channels are locked.
     *
     * - When a channel is not locked (update required), the physical data can
     *   be used as a previous value and compared to the logical data.
     *   This allows to apply the electrical value to the actuator only in case
     *   of change detection. This is especially interesting in case of time
     *   consuming hardware access (remote I/Os, network, etc.).
     *   Then do not forget to update the physical data with the logical data
     */

    strRtIoCpxDvc *cpxDev=(strRtIoCpxDvc *)pRtIoSplDvc->pvRtIoLevBack;
    strOemParam *oemCPar=(strOemParam *)cpxDev->pvOemParam;

    strRtIoChan*     pChannel;
    strDfIoSplDvc*   pStaticDef;
    uint16           nbChannel;
    uint16           nbIndex;
    uchar*           pPhyData;      /* Physical value */
    uchar*           pLogData;      /* Logic Value */
    uchar            byElecData;    /* Electrical value ('1' or '0') */
    uint8_t            sNewMsg[128];// for coil registers bits
    uint16_t           tab_reg[32];// for holding registers
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

        if (byElecData) sNewMsg[nbIndex] = 1;
        else            sNewMsg[nbIndex] = 0;
        pChannel++;
    }
    sNewMsg[ nbChannel] = 0; /* null char at the end of the string */
    /* If one variable has changed, we print in the file the new values */
    modbus_t *ctx;
    if (oemCPar->NCOM==1) {ctx = modbus_new_rtu("/dev/ttySAC0", 460800, 'N', 8, 1);}
    if (oemCPar->NCOM==2) {ctx = modbus_new_rtu("/dev/ttySAC1", 460800, 'N', 8, 1);}
    if (oemCPar->NCOM==3) {ctx = modbus_new_rtu("/dev/ttySAC2", 460800, 'N', 8, 1);}
    int rc;
    struct timeval response_timeout;
    response_timeout.tv_sec = 0;
    response_timeout.tv_usec = 20000; //for rtu_server
    modbus_set_slave(ctx,  oemCPar->ID);

    //convert data for write in holding registrs
    //        uint16_t *tab_reg=new uint16_t[128];
    tab_reg[0]=0;
    tab_reg[0] += (uint16_t)(sNewMsg[0] << 0);
    tab_reg[0] += (uint16_t)(sNewMsg[1] << 1);
    tab_reg[0] += (uint16_t)(sNewMsg[2] << 2);
    tab_reg[0] += (uint16_t)(sNewMsg[3] << 3);
    tab_reg[0] += (uint16_t)(sNewMsg[4] << 4);
    tab_reg[0] += (uint16_t)(sNewMsg[5] << 5);
    tab_reg[0] += (uint16_t)(sNewMsg[6] << 6);
    tab_reg[0] += (uint16_t)(sNewMsg[7] << 7);
    //end convert data for write in holding registrs

    //write

    if (modbus_connect(ctx) == -1)
    {
      //  printf("Connexion failed: \n");
        modbus_free(ctx);
    }
    else
    {
        modbus_set_response_timeout(ctx, &response_timeout);
        // rc  = modbus_write_bits(ctx, 0,nbChannel, sNewMsg); //write in coil registers
        rc  = modbus_write_registers(ctx, 40000, 1, tab_reg); //write in holding registers(bit mask)
        //For EVRO_modules adress=40000//

        if (rc == -1)
        {
            cpxDev->luUser =0;
        }
        else
        {
            cpxDev->luUser =1;
        };
        modbus_close(ctx);
        modbus_free(ctx);

    };
}

/****************************************************************************
function    : evro_int_evro_int_evro_8roIosCtl
description : Simple device Control function
parameters  :
   (input) uchar cuSubFunct :          Sub function parameter.
   (input) strRtIoSplDvc* pRtIoSplDvc: Rt io struct of the spl dvc to control.
   (input) uint16 huChanNum :          Channel number if any.
   (input) void* pvReserved :          Reserved.
return value: None
warning     :
****************************************************************************/

void evro_int_evro_int_evro_8roIosCtl
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
    float*         pPhyData;   /* Physical value */
    float          fElecData;  /* Electrical value */
    float          fmult, fdiv, foffset;
    strRtIoChan*   pChannel;
    pChannel  = pRtIoSplDvc->pRtIoChan;
    pChannel += huChanNum;
    pPhyData  = (float*)(pChannel->pvKerPhyData);

    switch( cuSubFunct)
    {
    case ISA_IO_CTL_CHANLOCK:
        break;
    case ISA_IO_CTL_CHANUNLOCK:
        break;
    case ISA_IO_CTL_CHANOUTFORCE:
        if((pChannel->pfnCnvCall) != 0) /* If there is a cnv */
            pChannel->pfnCnvCall( ISA_IO_DIR_OUTPUT, pPhyData, &fElecData);
        else
            fElecData = *pPhyData;
        /* Apply gain and offset */
        fmult   = *(float *)(&(pChannel->luCnvMult));
        fdiv    = *(float *)(&(pChannel->luCnvDiv ));
        foffset = *(float *)(&(pChannel->luCnvOfs));
        if (fdiv != 0.0)
        {
            fElecData = ((fElecData) * fmult  / fdiv) + foffset;
        }
        break;
    }
}
/* eof ********************************************************************/

