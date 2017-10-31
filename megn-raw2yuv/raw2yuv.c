#include "raw2yuv.h"
#include <stdio.h>
#include "math.h"
//#include <math.h>
   
static const int tile_colours[8][4] = {   
    {0, 1, 1, 2},   
    {1, 0, 2, 1},   
    {2, 1, 1, 0},   
    {1, 2, 0, 1},   
    {0, 1, 1, 2},   
    {1, 0, 2, 1},   
    {2, 1, 1, 0},   
    {1, 2, 0, 1}};   
   
#define RED 0    
#define GREEN 1    
#define BLUE 2    
   
static int gp_bayer_accrue (unsigned char *image, int w, int h, int x0, int y0,   
        int x1, int y1, int x2, int y2, int x3, int y3, int colour);   
   
int gp_bayer_expand (unsigned char *input, int w, int h, unsigned char *output,  BayerTile tile)   
{   
    int x, y, i;   
    int colour, bayer;   
    unsigned char *ptr = input;   
   
    switch (tile) {   
   
        case BAYER_TILE_RGGB:   
        case BAYER_TILE_GRBG:   
        case BAYER_TILE_BGGR:   
        case BAYER_TILE_GBRG:   
   
            for (y = 0; y < h; ++y)   
                for (x = 0; x < w; ++x, ++ptr)    
                {   
                    bayer = (x&1?0:1) + (y&1?0:2);   
   
                    colour = tile_colours[tile][bayer];   
   
                    i = (y * w + x) * 3;   
   
                    output[i+RED]    = 0;   
                    output[i+GREEN]  = 0;   
                    output[i+BLUE]   = 0;   
                    output[i+colour] = *ptr;   
                }   
            break;   
   
        case BAYER_TILE_RGGB_INTERLACED:   
        case BAYER_TILE_GRBG_INTERLACED:   
        case BAYER_TILE_BGGR_INTERLACED:   
        case BAYER_TILE_GBRG_INTERLACED:   
   
   
            for (y = 0; y < h; ++y, ptr+=w)   
                for (x = 0; x < w; ++x)    
                {   
                    bayer = (x&1?0:1) + (y&1?0:2);   
   
                    colour = tile_colours[tile][bayer];   
       
                    i = (y * w + x) * 3;   
   
                    output[i+RED]    = 0;   
                    output[i+GREEN]  = 0;   
                    output[i+BLUE]   = 0;   
                    output[i+colour] = (x&1)? ptr[x>>1]:ptr[(w>>1)+(x>>1)];   
                }   
            break;   
    }   
   
    return (GP_OK);   
}   

#define AD(x, y, w) ((y)*(w)*3+3*(x))    

int gp_bayer_interpolate (unsigned char *image, int w, int h, BayerTile tile)   
{   
    int x, y, bayer;   
    int p0, p1, p2, p3;   
    int value, div ;   
   
    switch (tile) {   
    default:   
    case BAYER_TILE_RGGB:   
    case BAYER_TILE_RGGB_INTERLACED:   
        p0 = 0; p1 = 1; p2 = 2; p3 = 3;   
        break;   
    case BAYER_TILE_GRBG:   
    case BAYER_TILE_GRBG_INTERLACED:   
        p0 = 1; p1 = 0; p2 = 3; p3 = 2;   
        break;   
    case BAYER_TILE_BGGR:   
    case BAYER_TILE_BGGR_INTERLACED:   
        p0 = 3; p1 = 2; p2 = 1; p3 = 0;   
        break;   
    case BAYER_TILE_GBRG:   
    case BAYER_TILE_GBRG_INTERLACED:   
        p0 = 2; p1 = 3; p2 = 0; p3 = 1;   
        break;   
    }   
   
    for (y = 0; y < h; y++)   
        for (x = 0; x < w; x++) {   
            bayer = (x&1?0:1) + (y&1?0:2);   
   
            if ( bayer == p0 ) {   
   
                /* red. green lrtb, blue diagonals */   
                image[AD(x,y,w)+GREEN] =   
                    gp_bayer_accrue(image, w, h, x-1, y, x+1, y, x, y-1, x, y+1, GREEN) ;   
   
                image[AD(x,y,w)+BLUE] =   
                    gp_bayer_accrue(image, w, h, x+1, y+1, x-1, y-1, x-1, y+1, x+1, y-1, BLUE) ;   
   
            } else if (bayer == p1) {   
   
                /* green. red lr, blue tb */   
                div = value = 0;   
                if (x < (w - 1)) {   
                    value += image[AD(x+1,y,w)+RED];   
                    div++;   
                }   
                if (x) {   
                    value += image[AD(x-1,y,w)+RED];   
                    div++;   
                }   
                image[AD(x,y,w)+RED] = value / div;   
   
                div = value = 0;   
                if (y < (h - 1)) {   
                    value += image[AD(x,y+1,w)+BLUE];   
                    div++;   
                }   
                if (y) {   
                    value += image[AD(x,y-1,w)+BLUE];   
                    div++;   
                }   
                image[AD(x,y,w)+BLUE] = value / div;   
   
            } else if ( bayer == p2 ) {   
   
                /* green. blue lr, red tb */   
                div = value = 0;   
   
                if (x < (w - 1)) {   
                    value += image[AD(x+1,y,w)+BLUE];   
                    div++;   
                }   
                if (x) {   
                    value += image[AD(x-1,y,w)+BLUE];   
                    div++;   
                }   
                image[AD(x,y,w)+BLUE] = value / div;   
   
                div = value = 0;   
                if (y < (h - 1)) {   
                    value += image[AD(x,y+1,w)+RED];   
                    div++;   
                }   
                if (y) {   
                    value += image[AD(x,y-1,w)+RED];   
                    div++;   
                }   
                image[AD(x,y,w)+RED] = value / div;   
   
            } else {   
   
                /* blue. green lrtb, red diagonals */   
                image[AD(x,y,w)+GREEN] =   
                    gp_bayer_accrue (image, w, h, x-1, y, x+1, y, x, y-1, x, y+1, GREEN) ;   
   
                image[AD(x,y,w)+RED] =   
                    gp_bayer_accrue (image, w, h, x+1, y+1, x-1, y-1, x-1, y+1, x+1, y-1, RED) ;   
            }   
        }   
   
    return (GP_OK);   
}   
   
static int gp_bayer_accrue (unsigned char *image, int w, int h, int x0, int y0,   
        int x1, int y1, int x2, int y2, int x3, int y3, int colour)   
{   int x [4] ;   
    int y [4] ;   
    int value [4] ;   
    int above [4] ;   
    int counter   ;   
    int sum_of_values;   
    int average ;   
    int i ;   
    x[0] = x0 ; x[1] = x1 ; x[2] = x2 ; x[3] = x3 ;   
    y[0] = y0 ; y[1] = y1 ; y[2] = y2 ; y[3] = y3 ;   
       
    counter = sum_of_values = 0 ;   
    if(colour == GREEN)   
    {   
        for (i = 0 ; i < 4 ; i++)   
        {   if ((x[i] >= 0) && (x[i] < w) && (y[i] >= 0) && (y[i] < h))   
            {   
                value [i] = image[AD(x[i],y[i],w) + colour] ;   
                counter++;   
            }   
            else   
            {   
                value [i] = -1 ;   
            }   
        }   
        if(counter == 4)   
        {      
            int hdiff ;   
            int vdiff ;   
            hdiff = value [1] - value [0] ;   
            hdiff *= hdiff ;    /* Make value positive by squaring */   
            vdiff = value [3] - value [2] ;   
            vdiff *= vdiff ;    /* Make value positive by squaring */   
            if(hdiff > 2*vdiff)   
            {   
                return (value [3] + value [2])/2 ;   
            }   
            if(vdiff > 2*hdiff)   
            {   
                return (value [1] + value [0])/2 ;   
            }   
        }   
    }   
       
    /* for blue and red */   
    counter = sum_of_values = 0 ;   
    for (i = 0 ; i < 4 ; i++)   
    {   if ((x[i] >= 0) && (x[i] < w) && (y[i] >= 0) && (y[i] < h))   
        {   value [i] = image[AD(x[i],y[i],w) + colour] ;   
            sum_of_values += value [i] ;   
            counter++ ;   
        }   
    }   
    average = sum_of_values / counter ;   
    if (counter < 4) return average ;   
    /* Less than four surrounding - just take average */   
    counter = 0 ;   
    for (i = 0 ; i < 4 ; i++)   
    {   above[i] = value[i] > average ;   
        if (above[i]) counter++ ;   
    }   
    /* Note: counter == 0 indicates all values the same */   
    if ((counter == 2) || (counter == 0)) return average ;   
    sum_of_values = 0 ;   
    for (i = 0 ; i < 4 ; i++)   
    {   if ((counter == 3) == above[i])   
        {   sum_of_values += value[i] ; }   
    }   
    return sum_of_values / 3 ;   
}   
   
int gp_bayer_decode (unsigned char *input, int w, int h, unsigned char *output,   
         BayerTile tile)   
{   
    gp_bayer_expand (input, w, h, output, tile);   
    gp_bayer_interpolate (output, w, h, tile);   
   
    return (GP_OK);   
}

MINT32 rawImgUnpack(MUINT8 * pSrcBuf,
                   MUINT16 * pDstBuf,
                   MUINT32 a_imgW,
                   MUINT32 a_imgH,
                   MUINT32 a_bitDepth)
{
    MUINT32 i,j;
    MUINT32 a_Stride = a_imgW;

    if (a_bitDepth == 10)
    {
        if (a_imgW % 8)
        {
            a_Stride = a_imgW + 8 - (a_imgW % 8);
        }
        a_Stride = a_Stride * 10 / 8;
    }
    else if(a_bitDepth == 12)
    {
        a_Stride = (a_imgW * a_bitDepth + 7) / 8;
        a_Stride =  (5 + a_Stride) /6 * 6;
    }
    
    if(a_bitDepth == 8)
    {
        MUINT8 pixelValue;
        for(i = 0; i < (a_imgW * a_imgH); ++i)
        {
            pixelValue = *(pSrcBuf++);
            *(pDstBuf) = pixelValue;
        }
    }
    else if(a_bitDepth == 10)
    {
        MUINT8 *lineBuf;

        for(i = 0; i < a_imgH; ++i)
        {
            lineBuf = pSrcBuf + i * a_Stride;

            for(j = 0; j < (a_imgW / 4); ++j)
            {
                MUINT8 byte0 = (MUINT8)(*(lineBuf++));
                MUINT8 byte1 = (MUINT8)(*(lineBuf++));
                MUINT8 byte2 = (MUINT8)(*(lineBuf++));
                MUINT8 byte3 = (MUINT8)(*(lineBuf++));
                MUINT8 byte4 = (MUINT8)(*(lineBuf++));

                *(pDstBuf++) = (MUINT16)(byte0 + ((byte1 & 0x3) << 8));
                *(pDstBuf++) = (MUINT16)(((byte1 & 0xFC) >> 2) + ((byte2 & 0xF) << 6));
                *(pDstBuf++) = (MUINT16)(((byte2 & 0xF0) >> 4) + ((byte3 & 0x3F) << 4));
                *(pDstBuf++) = (MUINT16)(((byte3 & 0xC0) >> 6) + (byte4 << 2));
            }

            //process last pixel in the width
            if((a_imgW % 4) != 0)
            {
                MUINT8 byte0 = (MUINT8)(*(lineBuf++));
                MUINT8 byte1 = (MUINT8)(*(lineBuf++));
                MUINT8 byte2 = (MUINT8)(*(lineBuf++));
                MUINT8 byte3 = (MUINT8)(*(lineBuf++));
                MUINT8 byte4 = (MUINT8)(*(lineBuf++));

                for(j = 0; j < (a_imgW % 4); ++j)
                {
                    switch(j)
                    {
                        case 0 : *(pDstBuf++) = (MUINT16)(byte0 + ((byte1 & 0x3) << 8));
                            break;
                        case 1 : *(pDstBuf++) = (MUINT16)(((byte1 & 0x3F) >> 2) + ((byte2 & 0xF) << 6));
                            break;
                        case 2 : *(pDstBuf++) = (MUINT16)(((byte2 & 0xF0) >> 4) + ((byte3 & 0x3F) << 6));
                            break;
                        case 3 : *(pDstBuf++) = (MUINT16)(((byte3 & 0xC0) >> 6) + (byte4 << 2));
                            break;
                    }
                }
            }
        }
    }
    else if(a_bitDepth == 12)
    {
        MUINT8 *lineBuf;

        for(i = 0; i < a_imgH; ++i)
        {
            lineBuf = pSrcBuf + i * a_Stride;

            for(j = 0; j < (a_imgW / 4); ++j)
            {
                MUINT8 byte0 = (MUINT8)(*(lineBuf++));
                MUINT8 byte1 = (MUINT8)(*(lineBuf++));
                MUINT8 byte2 = (MUINT8)(*(lineBuf++));
                MUINT8 byte3 = (MUINT8)(*(lineBuf++));
                MUINT8 byte4 = (MUINT8)(*(lineBuf++));
                MUINT8 byte5 = (MUINT8)(*(lineBuf++));

                *(pDstBuf++) = (MUINT16)(byte0 + ((byte1 & 0xF) << 8));
                *(pDstBuf++) = (MUINT16)((byte1 >> 4) + (byte2 << 4));
                *(pDstBuf++) = (MUINT16)(byte3 + ((byte4 & 0xF) << 8));
                *(pDstBuf++) = (MUINT16)((byte4 >> 4) + (byte5 << 4));
            }

             //process last pixel in the width
            if((a_imgW % 4) != 0)
            {
                MUINT8 byte0 = (MUINT8)(*(lineBuf++));
                MUINT8 byte1 = (MUINT8)(*(lineBuf++));
                MUINT8 byte2 = (MUINT8)(*(lineBuf++));
                MUINT8 byte3 = (MUINT8)(*(lineBuf++));
                MUINT8 byte4 = (MUINT8)(*(lineBuf++));
                MUINT8 byte5 = (MUINT8)(*(lineBuf++));

                for(j = 0; j < (a_imgW % 4); ++j)
                {
                    switch(j)
                    {
                        case 0 : *(pDstBuf++) = (MUINT16)(byte0 + ((byte1 & 0xF) << 8));
                            break;
                        case 1 : *(pDstBuf++) = (MUINT16)((byte1 >> 4) + (byte2 << 4));
                            break;
                        case 2 : *(pDstBuf++) = (MUINT16)(byte3 + ((byte4 & 0xF) << 8));
                            break;
                        case 3 : *(pDstBuf++) = (MUINT16)((byte4 >> 4) + (byte5 << 4));
                            break;
                    }
                }
            }
        }
    }

    return 0;
}

#define MAX_RAW_SIZE (11*1024*1024)
int main2(int argc,char *argv[])
{
	FILE *fp;
	if((fp=fopen("pass1_0.raw","rb"))==0)
	{
		return -1;
	}
    char* raw_data = malloc(MAX_RAW_SIZE);
	fread(raw_data,sizeof(char), MAX_RAW_SIZE, fp);
	fclose(fp);
    
    char* unpack_raw_data = malloc(MAX_RAW_SIZE);
    rawImgUnpack(raw_data, (MUINT16 *)unpack_raw_data, 2592, 1944, 10);
    FILE *fp_write;
    if((fp_write=fopen("raw10.raw","wb"))==0)
    {
        return -1;
    }
    fwrite(unpack_raw_data, sizeof(char), 2592*1944*2, fp_write);
    fclose(fp_write);
    free(unpack_raw_data);
    free(raw_data);
	return 0;
}


    typedef struct                       /**** BMP file header structure ****/  
    {  
        unsigned int   bfSize;           /* Size of file */  
        unsigned short bfReserved1;      /* Reserved */  
        unsigned short bfReserved2;      /* ... */  
        unsigned int   bfOffBits;        /* Offset to bitmap data */  
    } MyBITMAPFILEHEADER;  
    
    
    typedef struct                       /**** BMP file info structure ****/  
    {  
        unsigned int   biSize;           /* Size of info header */  
        int            biWidth;          /* Width of image */  
        int            biHeight;         /* Height of image */  
        unsigned short biPlanes;         /* Number of color planes */  
        unsigned short biBitCount;       /* Number of bits per pixel */  
        unsigned int   biCompression;    /* Type of compression to use */  
        unsigned int   biSizeImage;      /* Size of image data */  
        int            biXPelsPerMeter;  /* X pixels per meter */  
        int            biYPelsPerMeter;  /* Y pixels per meter */  
        unsigned int   biClrUsed;        /* Number of colors used */  
        unsigned int   biClrImportant;   /* Number of important colors */  
    } MyBITMAPINFOHEADER;  
    
    /*
    typedef struct tagRGBQUAD{  
        BYTE rgbBlue;
        BYTE rgbGreen;
        BYTE rgbRed;
        BYTE rgbReserved;
    }RGBQUAD; 
    */
    
    void rgb2Bmp(const char *filename, unsigned char *rgbbuf, int width, int height)  
    {  
        MyBITMAPFILEHEADER bfh;  
        MyBITMAPINFOHEADER bih;  
        /* Magic number for file. It does not fit in the header structure due to alignment requirements, so put it outside */  
        unsigned short bfType=0x4d42;             
        bfh.bfReserved1 = 0;  
        bfh.bfReserved2 = 0;  
        bfh.bfSize = 2+sizeof(MyBITMAPFILEHEADER) + sizeof(MyBITMAPINFOHEADER)+width*height*3;  
        bfh.bfOffBits = 0x36;  
      
        bih.biSize = sizeof(MyBITMAPINFOHEADER);  
        bih.biWidth = width;  
        bih.biHeight = height;  
        bih.biPlanes = 1;  
        bih.biBitCount = 24;  
        bih.biCompression = 0;  
        bih.biSizeImage = 0;  
        bih.biXPelsPerMeter = 5000;  
        bih.biYPelsPerMeter = 5000;  
        bih.biClrUsed = 0;  
        bih.biClrImportant = 0;  
      
        FILE *file = fopen(filename, "wb");  
        if (!file)  
        {  
            printf("Could not write file\n");  
            return;  
        }  
      
        /*Write headers*/  
        fwrite(&bfType,sizeof(bfType),1,file);  
        fwrite(&bfh,sizeof(bfh),1, file);  
        fwrite(&bih,sizeof(bih),1, file);  
      
        fwrite(rgbbuf,width*height*3,1,file);  
        fclose(file);  
    }  
    
    int fastLog2(int x){
		float fx;
		unsigned long ix, exp;

		fx = (float)x;
		ix = *(unsigned long*)&fx;
		exp = (ix >> 23) & 0xFF;

		return exp - 127;
	}
	
	double fastPow(double x, int n){
		if (n==0) 
			return 1;
		double num = 1;
		while (n--) 
			num *= x;
		return num;
	}

#define MAX_RAW_SIZE2 (2592*1944*2)
int main(int argc, char *argv[]){
    FILE *fp;
	if((fp=fopen("raw10.raw","rb"))==0)
	{
		return -1;
	}
    char* raw10bit = malloc(MAX_RAW_SIZE2);
	fread(raw10bit, sizeof(char), MAX_RAW_SIZE2, fp);
	fclose(fp);
	
	MUINT16* raw10bitTemp = raw10bit;
	MUINT8* raw8bit = malloc(MAX_RAW_SIZE2/2); 
	int i = 0;
	for(i = 0; i < MAX_RAW_SIZE2/2; i++){
		raw8bit[i] = (raw10bitTemp[i]  & 0xFF);
		//raw8bit[i] = fastPow(2 , (fastLog2(raw10bitTemp[i]) * 8 / 10));
		//raw8bit[i] = pow(2 , (log(raw10bitTemp[i]) / log(2) * 8 / 10));
	}
	
	MUINT8* image = malloc(MAX_RAW_SIZE2/2*3);
	gp_bayer_expand (raw8bit, 2592, 1944, image, BAYER_TILE_RGGB);   
    gp_bayer_interpolate (image, 2592, 1944, BAYER_TILE_RGGB); 
    
    /*
    FILE *fp_write;
    if((fp_write=fopen("raw10.rgb","wb"))==0) 
    {
        return -1;
    }
    fwrite(image, sizeof(char), MAX_RAW_SIZE2/2*3, fp_write);
    fclose(fp_write);  
    */
    rgb2Bmp("raw10.bmp", image, 2592, 1944);
	
	free(raw10bit);
    free(raw8bit);
    free(image);
	return 0;
}
