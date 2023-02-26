#include "Display_EPD_W21_spi.h"
#include "Display_EPD_W21.h"
void _Init_Part();
void delay_xms(unsigned int xms)
{
	unsigned int i;
	while(xms--)
	{
		i=12000;
		while(i--);
	}
}

void EPD_W21_Init(void)
{
	EPD_W21_RST_0;		// Module reset
	delay_xms(10);//At least 10ms delay 
	EPD_W21_RST_1;
	delay_xms(10);//At least 10ms delay 

	EPD_W21_RST_0;		// Module reset
	delay_xms(10);//At least 10ms delay 
	EPD_W21_RST_1;
	delay_xms(10);//At least 10ms delay 

	EPD_W21_RST_0;		// Module reset
	delay_xms(10);//At least 10ms delay 
	EPD_W21_RST_1;
	delay_xms(10);//At least 10ms delay 	
}

void EPD_Display(unsigned char *Image)
{
    unsigned int Width, Height,i,j;
    Width = (EPD_WIDTH % 8 == 0)? (EPD_WIDTH / 8 ): (EPD_WIDTH / 8 + 1);
    Height = EPD_HEIGHT;


	EPD_W21_WriteCMD(0x91); // enter partial mode

	EPD_W21_WriteCMD(0x90); // set partial window
	EPD_W21_WriteDATA (0x00); //HRST
	EPD_W21_WriteDATA (127); //HRED
	EPD_W21_WriteDATA (0x00); //VRST
	EPD_W21_WriteDATA (127); //VRED
	EPD_W21_WriteDATA (1); // gates scan outside partial window on/off



    EPD_W21_WriteCMD(0x10);
    for (j = 0; j < Height; j++) {
        for ( i = 0; i < Width; i++) {
            EPD_W21_WriteDATA(0x00);
        }
    }

    EPD_W21_WriteCMD(0x13);
    for ( j = 0; j < Height; j++) {
        for ( i = 0; i < Width; i++) {
           EPD_W21_WriteDATA(Image[i + j * Width]);
        }
    }
		EPD_W21_WriteCMD(0x12);			//DISPLAY REFRESH 	
		delay_xms(1);	    //!!!The delay here is necessary, 200uS at least!!!     
		lcd_chkstatus();

		EPD_W21_WriteCMD(0x92); // end partial mode

}


//UC8151C
void EPD_init(void)
{	


		EPD_W21_Init(); //Electronic paper IC reset  


		EPD_W21_WriteCMD(0x00);			 //panel setting
		EPD_W21_WriteDATA(0x1f); 		 //LUT from OTP  full update
		//EPD_W21_WriteDATA(0xbf);  // partial update

		EPD_W21_WriteCMD(0x61);			//resolution setting
		EPD_W21_WriteDATA (0x80);  //128  	 
		EPD_W21_WriteDATA (0x01);	//296
		EPD_W21_WriteDATA (0x28);

		EPD_W21_WriteCMD(0X50);			//VCOM AND DATA INTERVAL SETTING			
		EPD_W21_WriteDATA(0x97);		//WBmode:VBDF 17|D7 VBDW 97 VBDB 57		WBRmode:VBDF F7 VBDW 77 VBDB 37  VBDR B7

		// _Init_Part();

		EPD_W21_WriteCMD(0x04);  //Power on
		lcd_chkstatus();        //waiting for the electronic paper IC to release the idle signal


}
	
void EPD_sleep(void)
{
		EPD_W21_WriteCMD(0X50);  //VCOM AND DATA INTERVAL SETTING			
		EPD_W21_WriteDATA(0xf7); //WBmode:VBDF 17|D7 VBDW 97 VBDB 57		WBRmode:VBDF F7 VBDW 77 VBDB 37  VBDR B7	

		EPD_W21_WriteCMD(0X02);  	//power off
	  lcd_chkstatus();          //waiting for the electronic paper IC to release the idle signal
		EPD_W21_WriteCMD(0X07);  	//deep sleep
		EPD_W21_WriteDATA(0xA5);
}



void PIC_display(const unsigned char* picData)
{
    unsigned int i;
//	  //Write Data
//		EPD_W21_WriteCMD(0x10);	       //Transfer old data
//	  for(i=0;i<4736;i++)
//    {
//	  EPD_W21_WriteDATA(0xff);
//    }

	EPD_W21_WriteCMD(0x91); // enter partial mode

	EPD_W21_WriteCMD(0x90); // set partial window
	EPD_W21_WriteDATA (0x00); //HRST
	EPD_W21_WriteDATA (127); //HRED
	EPD_W21_WriteDATA (0x00); //VRST
	EPD_W21_WriteDATA (127); //VRED
	EPD_W21_WriteDATA (1); // gates scan outside partial window on/off


		EPD_W21_WriteCMD(0x13);		     //Transfer new data
	  for(i=0;i<4736;i++)	     
	  {
	  EPD_W21_WriteDATA(*picData);  //Transfer the actual displayed data
	  picData++;
	  }
	 //Refresh
	  EPD_W21_WriteCMD(0x12);		//DISPLAY REFRESH 	
		delay_xms(1);	  //!!!The delay here is necessary, 200uS at least!!!     
		lcd_chkstatus();          //waiting for the electronic paper IC to release the idle signal
	EPD_W21_WriteCMD(0x92); // end partial mode


}
void PIC_display_Clear(void)
{
    unsigned int i;
	  //Write Data
		EPD_W21_WriteCMD(0x10);	       //Transfer old data
	  for(i=0;i<4736;i++)	  
    {	
	  EPD_W21_WriteDATA(0xFF); 
    }
		EPD_W21_WriteCMD(0x13);		     //Transfer new data
	  for(i=0;i<4736;i++)	     
	  {
	  EPD_W21_WriteDATA(0xFF);  //Transfer the actual displayed data
	  }
		//Refresh
  	EPD_W21_WriteCMD(0x12);		//DISPLAY REFRESH 	
		delay_xms(1);	             //!!!The delay here is necessary, 200uS at least!!!     
		lcd_chkstatus();          //waiting for the electronic paper IC to release the idle signal

}

void lcd_chkstatus(void)
{
	while(!isEPD_W21_BUSY); //0:BUSY, 1:FREE                     
}



//partial screen update LUT
//#define Tx19 0x19 // original value is 25 (phase length)
#define Tx19 0x10   // new value for test is 16 (phase length)
//#define Tx19 0x20   // new value for test is 32 (phase length)
const unsigned char lut_20_vcomDC_partial[]  =
{
  0x00, Tx19, 0x01, 0x00, 0x00, 0x01,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00,
};

const unsigned char  lut_21_ww_partial[]  =
{
  0x00, Tx19, 0x01, 0x00, 0x00, 0x01,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

const unsigned char  lut_22_bw_partial[]  =
{
  0x80, Tx19, 0x01, 0x00, 0x00, 0x01,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

const unsigned char  lut_23_wb_partial[]  =
{
  0x40, Tx19, 0x01, 0x00, 0x00, 0x01,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

const unsigned char lut_24_bb_partial[]  =
{
  0x00, Tx19, 0x01, 0x00, 0x00, 0x01,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

void _writeCommand(uint8_t cmd){
	EPD_W21_WriteCMD(cmd);
}
void _writeData(uint8_t data){
	EPD_W21_WriteDATA(data);
}

const int WIDTH = 296;
const int HEIGHT = 128;
void _InitDisplay()
{
  _writeCommand(0x00); // panel setting
  _writeData(0x1f);    // LUT from OTP, 128x296
  _writeCommand(0x61); //resolution setting
  _writeData (WIDTH);
  _writeData (HEIGHT >> 8);
  _writeData (HEIGHT & 0xFF);
  _writeCommand(0x50); // VCOM AND DATA INTERVAL SETTING
  _writeData(0x97);    // WBmode:VBDF 17|D7 VBDW 97 VBDB 57   WBRmode:VBDF F7 VBDW 77 VBDB 37  VBDR B7
}

int _using_partial_mode = 0;
int _power_is_on = 0;

void _PowerOn()
{
  if (!_power_is_on)
  {
    _writeCommand(0x04);
    //_waitWhileBusy("_PowerOn", power_on_time);
    delay_xms(150); // kevin this is set conservatively
  }
  _power_is_on = 1;
}

void _Init_Part()
{
  _InitDisplay();
  _writeCommand(0x00); //panel setting
  const int hasFastPartialUpdate=1;
  _writeData(hasFastPartialUpdate ? 0xbf : 0x1f); // for test with OTP LUT
  _writeCommand(0x82); //vcom_DC setting
  _writeData (0x08);
  _writeCommand(0x50);
  _writeData(0x17);    //WBmode:VBDF 17|D7 VBDW 97 VBDB 57   WBRmode:VBDF F7 VBDW 77 VBDB 37  VBDR B7
  _writeCommand(0x20);
  EPD_W21_WriteDATA_array(lut_20_vcomDC_partial, sizeof(lut_20_vcomDC_partial), 0);
  _writeCommand(0x21);
  EPD_W21_WriteDATA_array(lut_21_ww_partial, sizeof(lut_21_ww_partial), 0);
  _writeCommand(0x22);
  EPD_W21_WriteDATA_array(lut_22_bw_partial, sizeof(lut_22_bw_partial), 0);
  _writeCommand(0x23);
  EPD_W21_WriteDATA_array(lut_23_wb_partial, sizeof(lut_23_wb_partial), 0);
  _writeCommand(0x24);
  EPD_W21_WriteDATA_array(lut_24_bb_partial, sizeof(lut_24_bb_partial), 0);
  // _PowerOn();
  _using_partial_mode = 1;
}












/***********************************************************
						end file
***********************************************************/

