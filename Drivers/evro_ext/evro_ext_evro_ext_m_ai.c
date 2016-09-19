/**************************************************************************
File:               evro_ext_evro_ext_m_ai.c
Author:             Umputun
Creation date:      19/07/2012 - 11:31
Device name:        M_AI
***************************************************************************/

#include <dsys0def.h>
#include <dios0def.h>
#include <evro_ext_evro_ext_m_ai.h>
#include <modbus/modbus.h>
/* OEM Parameters */
typedef struct _tag_strM_ai
{
    int32  baud_rate;   /* Baud Rate */
    int32  NCOM;   /* COM port number */
    int32  ID;   /* Device address */
    int32  Adress;   /* address of the first register */
    int32  NR;   /* number of registers */
    int32  Func;  /* functions modbus */
    int32  Parity;   /* 0 - None 1-even 2-odd */
    int32  Stop_bits;   /* 1,2 stop bita */
    int32  TimeOutu;   /* timeout mcs */
    int32  TimeOutsec;   /* temeout s */
} strOemParam;
/****************************************************************************
function    : evro_ext_evro_ext_m_aiIosOpen
description : Level 1 device Open function
parameters  :
   (input) strRtIoSplDvc* pvRtIoDvc :  Run time io struct of the device to open
return value: typSTATUS :  0 if successful, BAD_RET if error
warning     : Returning with an error stops the kernel resource starting
****************************************************************************/

typSTATUS evro_ext_evro_ext_m_aiIosOpen
(
    strRtIoSplDvc* pRtIoSplDvc /* Run time io struct of the device to read */
)
{
    /*
     * Basically, for a complex device the driver can browse all
     * simple devices and perform corressponding initializations.
     * For a simple device it just initializes it.
     */
    printf("MB AI init\n");
    return (0);
}

/****************************************************************************
function    : evro_ext_evro_ext_m_aiIosClose
description : Level 1 device Close function
parameters  :
   (input) strRtIoSplDvc* pvRtIoDvc :  Run time io struct of the device to close
return value: None
warning     :
****************************************************************************/

void evro_ext_evro_ext_m_aiIosClose
(
    strRtIoSplDvc* pRtIoSplDvc /* Run time io struct of the device to read */
)
{
    printf("MB AI Exit\n");
}

/****************************************************************************
function    : evro_ext_evro_ext_m_aiIosRead
description : Simple device Read function
parameters  :
   (input) void* pvRtIoDvc :  Run time io struct of the device to read
return value: None
warning     :
****************************************************************************/

void evro_ext_evro_ext_m_aiIosRead
(
    strRtIoSplDvc* pRtIoSplDvc /* Run time io struct of the device to read */
)
{
    /*
     * pRtIoSplDvc parameter allows you to access to strRtIoChan structure
     *  of information for each channel.
     * If required you can then also get strDfIoChan structure.
     *
     * Typical implementation for each channel:
     * (variables refer to structure fields):
         - Get input electrical value from sensor
         - If a conversion is required, convert it
           The info is in channel structures in following fields:
              cuCnvGainTyp != 0 ==> Gain/Offset to applied
              pfnCnvCall != 0   ==> 'C' conversion to applied
         - Update physical data (pvKerPhyData) with computed value
         - If not locked (cuIsLocked) also update logical data (pvKerData)
     */

    /*
     * To improve performances, the number of locked channels is given to
     * avoid testing each of them when no channels are locked or when all
     * channels are locked.
     */
    strRtIoCpxDvc *cpxDev=(strRtIoCpxDvc *)pRtIoSplDvc->pvRtIoLevBack;
    strOemParam *oemCPar=(strOemParam *)cpxDev->pvOemParam;
    modbus_t *ctx;
    uint16_t tab_reg[150];
    int rc;
    struct timeval response_timeout;
    response_timeout.tv_sec = oemCPar->TimeOutsec;
    response_timeout.tv_usec = oemCPar->TimeOutu;
    if (oemCPar->NCOM==1)
    {
        if (oemCPar->Parity==0)
        {
            ctx = modbus_new_rtu("/dev/ttySAC0", oemCPar->baud_rate, 'N', 8, oemCPar->Stop_bits);
        };
        if (oemCPar->Parity==1)
        {
            ctx = modbus_new_rtu("/dev/ttySAC0", oemCPar->baud_rate, 'E', 8, oemCPar->Stop_bits);
        };
        if (oemCPar->Parity==2)
        {
            ctx = modbus_new_rtu("/dev/ttySAC0", oemCPar->baud_rate, 'O', 8, oemCPar->Stop_bits);
        };
    }
    if (oemCPar->NCOM==2)
    {
        if (oemCPar->Parity==0)
        {
            ctx = modbus_new_rtu("/dev/ttySAC1", oemCPar->baud_rate, 'N', 8, oemCPar->Stop_bits);
        };
        if (oemCPar->Parity==1)
        {
            ctx = modbus_new_rtu("/dev/ttySAC1", oemCPar->baud_rate, 'E', 8, oemCPar->Stop_bits);
        };
        if (oemCPar->Parity==2)
        {
            ctx = modbus_new_rtu("/dev/ttySAC1", oemCPar->baud_rate, 'O', 8, oemCPar->Stop_bits);
        };
    }
    modbus_set_slave(ctx, oemCPar->ID);
    if (modbus_connect(ctx) == -1)
    {
        //printf("Connexion failed: \n");
        modbus_free(ctx);
    }
    else
    {
        modbus_set_response_timeout(ctx, &response_timeout);
        if (oemCPar->Func == 3)
        {
            rc  = modbus_read_registers(ctx, oemCPar->Adress, oemCPar->NR, tab_reg);
        }
        else
        {
            rc  = modbus_read_input_registers(ctx, oemCPar->Adress, oemCPar->NR, tab_reg);
        }

        if (rc == -1)
        {
            cpxDev->luUser =0;
            modbus_close(ctx);
            modbus_free(ctx);
        }
        else
        {
            strRtIoChan*        pChannel;
            strDfIoSplDvc*      pStaticDef;
            uint16              nbChannel;
            uint16              nbIndex;
            int16*              pPhyData;   /* Physical value */
            int16*              pLogData;   /* Logical Value    */
            int16               fElecData;
            int16               fMult,fDiv,fOffset;
            pStaticDef =  pRtIoSplDvc->pDfIoSplDvc;
            nbChannel  =  pStaticDef->huNbChan;
            pChannel   =  pRtIoSplDvc->pRtIoChan;
            cpxDev->luUser =1;
            modbus_close(ctx);
            modbus_free(ctx);
            /*  Update all channel */
            for( nbIndex = 0; nbIndex < nbChannel; nbIndex++)
            {
                pPhyData = (int16*)(pChannel->pvKerPhyData);
                pLogData = (int16*)(pChannel->pvKerData);

                fElecData=tab_reg[nbIndex];
                if((pChannel->pfnCnvCall) != 0) /* If there is a conversion */
                {
                    pChannel->pfnCnvCall( ISA_IO_DIR_INPUT, &fElecData, &fElecData);
                }
                fMult   = *(float *)(&(pChannel->luCnvMult));
                fDiv    = *(float *)(&(pChannel->luCnvDiv ));
                fOffset = *(float *)(&(pChannel->luCnvOfs));
                if (fDiv != 0.0)
                    fElecData = ((fElecData) * fMult  / fDiv) + fOffset;
                if( *pPhyData != fElecData) /* If Physic value != Electrical value */
                {
                    *pPhyData = fElecData;
                }


                /* update the channel if not locked */
                if(!(pChannel->cuIsLocked))  *pLogData = *pPhyData;

                pChannel++;
            }
        }

    }

}

/****************************************************************************
function    : evro_ext_evro_ext_m_aiIosCtl
description : Simple device Control function
parameters  :
   (input) uchar cuSubFunct :          Sub function parameter.
   (input) strRtIoSplDvc* pRtIoSplDvc: Rt io struct of the spl dvc to control.
   (input) uint16 huChanNum :          Channel number if any.
   (input) void* pvReserved :          Reserved.
return value: None
warning     :
****************************************************************************/

void evro_ext_evro_ext_m_aiIosCtl
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

}


/* eof ********************************************************************/

